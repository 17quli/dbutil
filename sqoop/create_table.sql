select concat (column_name,' ',
case data_type
when 'VARCHAR2' then concat('varchar','(',cast(data_length as string),')') 
when 'NUMBER' then case   when data_scale=0 and data_precision=1 then 'tinyint'
                                    when data_scale=0 and data_precision>=2 and data_precision<5 then 'smallint'
                                    when data_scale=0 and data_precision>=5 and data_precision<10 then 'int'
                                    when data_scale=0 and data_precision>=10 and data_precision<=18 then 'bigint'
                                    when data_precision>18 or data_scale is null and data_precision is null then 'double'
                             end    
when 'TIMESTAMP(6)' then 'timestamp'                             
when 'CLOB' then 'string'
end
,if(lead(column_id,1) over (partition by table_name order by column_id) is null,'',','))
from mobject_def
where table_name =upper('${var:p1}')
order by table_name,column_id;
