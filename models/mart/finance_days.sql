SELECT
date_date,
ROUND (COUNT (orders_id), 2) AS total_number_of_transactions,
ROUND (SUM (revenue), 2) AS total_revenue,
ROUND ((SUM (revenue) / COUNT (orders_id)), 2) AS average_basket,
ROUND (SUM (operational_margin), 2) AS operational_margin,
ROUND (SUM (purchase_cost), 2) AS total_purchase_cost,
ROUND (SUM (shipping_fee), 2) AS total_shipping_fees,
ROUND (SUM (logcost), 2) AS total_log_costs,
ROUND (SUM (quantity), 0) AS total_quantity_of_products_sold
FROM {{ ref("int_orders_operational")}} 
GROUP BY date_date