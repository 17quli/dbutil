#!/bin/bash
#set -x
#20200915	:add owner to mtable for view and table
#20200924	:comment out "truncate table" so that the program can be run in parallel
logfile=./log/`basename ${0} .sh`.log
exec> >(tee -a $logfile)
exec 2>&1

conffile=./conf/`basename ${0} .sh`.conf
db=$1
sclist=./stg/show_create_table_${db}.lst
mtbl=./stg/`basename ${0} .sh`_tbl_${db}.lst
dt=`date -Iseconds`
dt=${dt:0:19}
dfmt="%Y-%m-%d %H:%M:%S------"
linea='----------------------------------------'
lineb=`printf "%s %s" "$db" "${linea:${#db}}"`


if [ $# -ne 1 ]
then
        echo "wrong # of arguments!" 
        echo "type $0 <database>" 
        exit 1
fi

>$mtbl


#echo `date +"$dfmt"`"truncate table dev_raw.mtable_stg" 
#./run_db_sqlb.sh dev_raw "truncate table dev_raw.mtable_stg;"

echo `date +"$dfmt"`"${lineb}list tables and write to $mtbl" 
./run_db_sqlb.sh $db "show tables" |while read table_name 
do
	desc=$(./run_db_sqlb.sh $db "desc formatted $table_name")
	owner=$(grep "^Owner:" "$desc"|awk '{print $2}')
	object_type=$(grep "^Table Type:" "$desc"|awk '{print $2}')
	if_partitioned=$(grep "^# Partition Information" "$desc"|awk '{print $2}')

	printf '%s' "$db" >>$mtbl
	printf '\002' >>$mtbl 
	printf '%s' "$line"  >>$mtbl
	printf '\002' >>$mtbl
	printf '%s' "table" >>$mtbl
	printf '\002' >>$mtbl
	printf '%s' "$if_partitioned" >>$mtbl
	printf '\002' >>$mtbl
	printf '%s' "$stored_as" >>$mtbl
	printf '\002' >>$mtbl
	printf '\002' >>$mtbl
	printf '%s' "$dt" >>$mtbl
	printf '\002' >>$mtbl
        printf '%s' "$owner">>$mtbl
	printf '\002' >>$mtbl
	if [ "$if_partitioned" = "Y" ]
        then
                stat_item=`./run_db_sqlb.sh $db "show table stats $line" |grep "Total"`
                stat_row_count=`echo "$stat_item"|cut -f2`
                hdfs_size=`echo "$stat_item"|cut -f4|sed -e "s/GB/*1024*1024*1024/g" -e "s/MB/*1024*1024/g" -e "s/KB/*1024/g" -e "s/B//g"`
        else
                stat_item=`./run_db_sqlb.sh $db "show table stats $line"`
                stat_row_count=`echo "$stat_item" |cut -f1`
                hdfs_size=`echo "$stat_item" |cut -f3|sed -e "s/GB/*1024*1024*1024/g" -e "s/MB/*1024*1024/g" -e "s/KB/*1024/g" -e "s/B//g"`
        fi
        printf '%s' "$stat_row_count">>$mtbl
        printf '\002' >>$mtbl
	select_row_count=`./run_db_sqlb.sh $db "select count(1) from $line"`
        printf '%s' "$select_row_count">>$mtbl
        printf '\002' >>$mtbl

        size=`echo "${hdfs_size}"|bc`
        if [ -z "$size" ]
        then
         size=0
        else
         size=`echo "$size/1" |bc `
        fi
        printf '%s' "$size">>$mtbl
        printf '\002' >>$mtbl
	printf '%s' "$partition_clause">>$mtbl
#        printf '\002' >>$mtbl
#	printf '%s' "$where_clause">>$mtbl
#        printf '\002' >>$mtbl
#	printf '%s' "$drop_clause">>$mtbl
        printf '\003'>>$mtbl
done

echo `date +"$dfmt"`"${lineb}list views and write to $mtbl" 
# parameter q bypassing show create and reuse the previously created show create list file

echo `date +"$dfmt"`"${lineb}upload $mtbl to hdfs" 
hdfs dfs -put -f $mtbl /env/1_dev/hive/raw/mtable_stg
echo `date +"$dfmt"`"${lineb}refresh mtable_stg and upsert into mtable" 
./run_db_sqlb.sh dev_raw "refresh mtable_stg;delete from mtable where db_name='$db';upsert into mtable select * from mtable_stg where db_name='$db';"
