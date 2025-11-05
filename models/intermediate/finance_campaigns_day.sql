SELECT
    date_date,
    ROUND ((operational_margin - tot_ads_cost), 2) AS ads_margin,
    average_basket,
    operational_margin,
    tot_ads_cost,
    tot_impression,
    tot_click,
    total_quantity_of_products_sold,
    total_revenue,
    total_purchase_cost,
    total_shipping_fees,
    total_log_costs
FROM {{ ref('int_campaigns_day') }}
LEFT JOIN {{ ref('finance_days') }}
USING (date_date)