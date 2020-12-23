CREATE VIEW ${var:view_db}.dss_rtn_attachments_ir833 AS
SELECT z.IRD_NUMBER, z.LOCATION_NUMBER, z.RETURN_PERIOD_DATE, z.RETURN_TYPE, z.RETURN_VERSION_NO, z.RETURN_STATUS, z.SCHEDULE_ERROR_CODE, z.FORM_VERSION_NO, z.ATTACHMENT_IRD_NUMBER, z.CERTIFICATE_SEQUENCE, z.DOC_LODGE_NBR_PREFIX, z.DOC_LODGE_NBR, z.DOC_LODGE_NBR_SUFFIX, z.NUMBER_OF_ERROR_ITEMS, z.`TIMESTAMP`, z.BRIGHTLINE, z.PROPERTY_TITLE_NUMBER_1, z.PROPERTY_TITLE_NUMBER_2, z.PROPERTY_TITLE_NUMBER_3, z.PROPERTY_ADDRESS_1, z.PROPERTY_ADDRESS_2, z.PROPERTY_ADDRESS_3, z.PROPERTY_ADDRESS_4, z.PROPERTY_ADDRESS_5, z.DATE_OF_PURCHASE, z.DATE_OF_SALE, z.SALE_PRICE, z.PURCHASE_PRICE, z.DEDUCT_COST, z.TOTAL_COST, z.TOTAL_NET_PROFIT_LOSS, z.PERCENT_OWNERSHIP, z.TOTAL_SALES_INC, z.EFILE_LODGEMENT_DATE, z.EFILE_DOCUMENT_LODGEMENT_NBR, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.dss_rtn_attachments_ir833 z LEFT OUTER JOIN ${var:source_db}.dss_special_clients_all sc ON CAST(z.IRD_NUMBER AS INT) = CAST(sc.IRD_NUMBER AS INT) WHERE nvl(sc.special_classification, 'STD') = 'STD' AND nvl(sc.record_active_flag, 'Y') = 'Y' AND nvl(sc.record_deleted_flag, 'N') = 'N';