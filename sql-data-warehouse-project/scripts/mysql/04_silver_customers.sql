USE silver;

TRUNCATE TABLE crm_cust_info;

INSERT INTO crm_cust_info
  (cst_id, cst_key, cst_firstname, cst_lastname,
   cst_marital_status, cst_gndr, cst_create_date)
SELECT
  CAST(cst_id AS SIGNED),
  TRIM(cst_key),
  TRIM(cst_firstname),
  TRIM(cst_lastname),
  CASE UPPER(TRIM(cst_marital_status))
    WHEN 'S' THEN 'Single' WHEN 'M' THEN 'Married' ELSE 'n/a' END,
  CASE UPPER(TRIM(cst_gndr))
    WHEN 'F' THEN 'Female' WHEN 'M' THEN 'Male' ELSE 'n/a' END,
  CAST(NULLIF(TRIM(cst_create_date), '') AS DATE)
FROM (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY cst_id ORDER BY cst_create_date DESC) AS flag_last
  FROM bronze.crm_cust_info
  WHERE TRIM(cst_id) <> ''
) t
WHERE flag_last = 1;