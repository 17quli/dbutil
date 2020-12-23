CREATE VIEW ${var:view_db}.app_tblnz_rtniit AS
SELECT z.flngdockey, z.fblnir215attached, z.fcurtotalfamilytaxcredit, z.fcurtotalpayededucted, z.fcurtotaladjpayededucted, z.fcurtotalgrossincome, z.fcurincomenotliableforacc, z.fcuraccearnerlevy, z.fcurtotalincomewithtaxdeducted, z.fcurtotalschedularpymttaxded, z.fcurtotalgrossschedularpayment, z.fcurexpensesschedularpayments, z.fcurnetschedularpayments, z.fcurtotalrwt, z.fcurtotalgrossinterest, z.fblnintpshpltc, z.fcurtotalimputationcredits, z.fcurtotaldividendrwt, z.fcurtotalgrossdividends, z.fblndivpshpltc, z.fcurtotalmaoricredits, z.fcurtotalmaoridistributions, z.fcurtotaltaxpaidbytrustees, z.fcurtotalestateortrusteeincome, z.fcurtotaltaxabledistributions, z.fcurtotaloverseastaxpaid, z.fcurtotaloverseasincome, z.fblnoverseassuper, z.fcurtotalpartnershiptaxcredits, z.fcurtotalactiveptshpincome, z.fcurtotalltctaxcredits, z.fcurtotalactiveltcincome, z.fcurnonallowabledeductions, z.fcurnonallowablededclaimed, z.fcuradjustedltcincome, z.fcurtaxcreditsubtotal, z.fcurincomesubtotal, z.fcurshareholderemployeesalary, z.fblnfutureshrsalary, z.fblnwithoutpayclosecompany, z.fcurnetrents, z.fcurselfemployednetincome, z.fcurtotalothernetincome, z.fcurrlwtcredit, z.fcurtotalincome, z.fcurtotalotherexpenses, z.fcurincomeafterexpenses, z.fcuramountbroughtforward, z.fcuramountclaimedthisyear, z.fcurtaxableincome, z.fblneligibleforietc, z.fdtmexoverseasincomestart, z.fdtmexcoverseasincomeend, z.fintexcoverseasmonths, z.fcurietc, z.fcurallowableimpcredits, z.fcurexcessimputationcredits, z.fcurtotalexttcpd, z.fcurtotaltcpd, z.fcurtaxontaxableincome, z.fcurresidualincometax, z.fcurtaxcalcresult, z.fcurimputationtocarryforward, z.fblnearlypymtdiscount, z.fcuroverpaymentprovrefund, z.fcurrefundandprovoverpayment, z.fcurrefundcalc, z.fcurprovisionaltax, z.fcurlosstocarryforward, z.fcurallowablerlwtcredits, z.fcurprovisionaltaxpaid, z.fcurrefund, z.fblndisclosurerequired, z.fstrptsstatus, z.flngselectgroup, z.fdtmselectdate, z.fblngroup2suspend, z.fstrwho, z.fdtmwhen, z.fcursaleofproperty, z.fstrresmethod, z.fcurresincome, z.fcurresdeductions, z.fcurresdeductionsprioryear, z.fcurresdeductionsclaimed, z.fcurresnetincome, z.fcurresdeductionscarriedforwar, z.fcurrdicarryforwardcurrentyear, z.fcurrdicarryforwardremaining, z.fcurshareholderaimtaxpaid, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.app_tblnz_rtniit z;
