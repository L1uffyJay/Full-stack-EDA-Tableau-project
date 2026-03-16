-- Retail Operations Intelligence analytics layer
-- Use this after exporting cleaned tables from the notebook if you want a SQL-based dashboard layer.

WITH orders_clean AS (
    SELECT
        order_id,
        customer_id,
        CAST(order_timestamp AS TIMESTAMP) AS order_ts,
        CAST(promised_delivery_date AS DATE) AS promised_delivery_date,
        CAST(actual_delivery_date AS DATE) AS actual_delivery_date,
        product_name,
        category,
        quantity,
        gross_sales_usd,
        discount_rate,
        net_sales_usd,
        cost_usd,
        sales_channel,
        shipping_mode,
        warehouse,
        sales_region,
        returned_flag,
        satisfaction_score,
        customer_segment,
        DATEDIFF(day, CAST(promised_delivery_date AS DATE), CAST(actual_delivery_date AS DATE)) AS delivery_delay_days,
        CASE WHEN CAST(actual_delivery_date AS DATE) > CAST(promised_delivery_date AS DATE) THEN 1 ELSE 0 END AS late_flag,
        net_sales_usd - cost_usd AS gross_margin_usd,
        CASE WHEN net_sales_usd = 0 THEN NULL ELSE (net_sales_usd - cost_usd) / net_sales_usd END AS gross_margin_pct
    FROM cleaned_orders
),
customer_enriched AS (
    SELECT
        c.customer_id,
        c.customer_country,
        c.account_tier,
        c.acquisition_motion,
        c.account_status,
        o.*
    FROM orders_clean o
    LEFT JOIN cleaned_customers c
      ON o.customer_id = c.customer_id
)
SELECT * FROM customer_enriched;
