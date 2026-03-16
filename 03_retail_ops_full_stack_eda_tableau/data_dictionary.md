# Data dictionary

## raw/orders.csv
- `order_id`: order identifier; includes duplicate rows
- `customer_id`: customer identifier
- `order_timestamp`: mixed timestamp formats
- `promised_delivery_date`: SLA target date
- `actual_delivery_date`: actual delivery date, mixed formats
- `product_name`: SKU display name
- `category`: product category
- `quantity`: ordered units; includes missing values
- `gross_sales_usd`: gross sales
- `discount_rate`: line-level discount percentage
- `net_sales_usd`: sales after discount; includes one impossible negative value
- `cost_usd`: estimated fulfillment/product cost
- `sales_channel`: channel with missing/casing inconsistencies
- `shipping_mode`: shipping speed with formatting inconsistencies
- `warehouse`: fulfillment location; some missing
- `sales_region`: market region with inconsistent values
- `returned_flag`: whether order was returned
- `satisfaction_score`: 1–5 score; some missing
- `customer_segment`: customer segment with inconsistencies

## raw/customers.csv
- `customer_id`: customer identifier; includes a duplicate
- `first_order_date`: first purchase date with mixed formats
- `customer_country`: country
- `account_tier`: account size / tier
- `acquisition_motion`: how account was acquired
- `account_status`: active/churned/at risk with inconsistent casing
