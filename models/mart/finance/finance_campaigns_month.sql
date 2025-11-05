SELECT
    EXTRACT (MONTH FROM date_date) AS month,
    ROUND (SUM (operational_margin - tot_ads_cost), 2) AS ads_margin,
    SUM (average_basket) AS average_basket,
    SUM (operational_margin) AS operational_margin,
    SUM (tot_ads_cost) AS tot_ads_cost,
    SUM (tot_impression) AS tot_impression,
    SUM (tot_click) AS tot_click,
    SUM (total_quantity_of_products_sold) AS total_quantity_of_products_sold,
    SUM (total_revenue) AS total_revenue,
    SUM (total_purchase_cost) AS total_purchase_cost,
    SUM (total_shipping_fees) AS total_shipping_fees,
    SUM (total_log_costs) AS total_log_costs
FROM {{ ref('finance_campaigns_day') }}
GROUP BY month