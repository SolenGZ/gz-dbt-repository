SELECT 
    date_date,
    COUNT (DISTINCT paid_source) AS nb_paid_sources,
    COUNT (DISTINCT campaign_key) AS nb_campaign_key,
    COUNT (DISTINCT campaign_name) AS nb_campaign_name,
    ROUND (SUM (ads_cost), 2) AS tot_ads_cost,
    ROUND (SUM (impression), 0) AS tot_impression,
    ROUND (SUM (click), 0) AS tot_click
FROM {{ ref('int_campaigns') }}
GROUP BY date_date