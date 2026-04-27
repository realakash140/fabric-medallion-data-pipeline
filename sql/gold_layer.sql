-- Create Gold tables
CREATE TABLE gold.fact_table AS
SELECT * FROM SilverLH.dbo.fact_table;

CREATE TABLE gold.customer_dim AS
SELECT * FROM SilverLH.dbo.customer_dim;

CREATE TABLE gold.store_dim AS
SELECT * FROM SilverLH.dbo.store_dim;

CREATE TABLE gold.trans_dim AS
SELECT * FROM SilverLH.dbo.trans_dim;

-- Aggregation
CREATE VIEW gold.bank_revenue_summary AS
WITH outerquery AS (
    SELECT f.*, d.bank_name
    FROM gold.fact_table f
    LEFT JOIN gold.trans_dim d
    ON f.payment_key = d.payment_key
)
SELECT bank_name,
SUM(total_price) AS aggregated_total_price
FROM outerquery
GROUP BY bank_name;
