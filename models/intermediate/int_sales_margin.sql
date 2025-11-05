SELECT 
*,
ROUND ((revenue - (quantity * purchase_price)), 2) AS margin,
ROUND ((quantity * purchase_price), 2) AS purchase_cost
FROM {{ ref("stg_gz_raw_data__sales")}} 
LEFT JOIN {{ ref("stg_gz_raw_data__product")}} 
USING (products_id)