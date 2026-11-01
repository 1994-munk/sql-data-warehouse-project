USE bronze;

DROP TABLE IF EXISTS crm_cust_info;
CREATE TABLE crm_cust_info (
  cst_id VARCHAR(255), cst_key VARCHAR(255), cst_firstname VARCHAR(255),
  cst_lastname VARCHAR(255), cst_marital_status VARCHAR(255),
  cst_gndr VARCHAR(255), cst_create_date VARCHAR(255)
);

DROP TABLE IF EXISTS crm_prd_info;
CREATE TABLE crm_prd_info (
  prd_id VARCHAR(255), prd_key VARCHAR(255), prd_nm VARCHAR(255),
  prd_cost VARCHAR(255), prd_line VARCHAR(255),
  prd_start_dt VARCHAR(255), prd_end_dt VARCHAR(255)
);

DROP TABLE IF EXISTS crm_sales_details;
CREATE TABLE crm_sales_details (
  sls_ord_num VARCHAR(255), sls_prd_key VARCHAR(255), sls_cust_id VARCHAR(255),
  sls_order_dt VARCHAR(255), sls_ship_dt VARCHAR(255), sls_due_dt VARCHAR(255),
  sls_sales VARCHAR(255), sls_quantity VARCHAR(255), sls_price VARCHAR(255)
);

DROP TABLE IF EXISTS erp_cust_az12;
CREATE TABLE erp_cust_az12 (cid VARCHAR(255), bdate VARCHAR(255), gen VARCHAR(255));

DROP TABLE IF EXISTS erp_loc_a101;
CREATE TABLE erp_loc_a101 (cid VARCHAR(255), cntry VARCHAR(255));

DROP TABLE IF EXISTS erp_px_cat_g1v2;
CREATE TABLE erp_px_cat_g1v2 (
  id VARCHAR(255), cat VARCHAR(255), subcat VARCHAR(255), maintenance VARCHAR(255)
);