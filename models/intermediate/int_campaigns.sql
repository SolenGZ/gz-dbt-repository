WITH campaigns AS (

SELECT
*
FROM {{ ref('stg_gz_raw_data__adwords') }}
UNION ALL 
SELECT 
*
FROM {{ ref('stg_gz_raw_data__bing') }}
UNION ALL
SELECT 
*
FROM {{ ref('stg_gz_raw_data__criteo') }}
UNION ALL
SELECT 
*
FROM {{ ref('stg_gz_raw_data__facebook') }}
)

SELECT
*,
CONCAT(date_date, "-", campaign_key) AS pk
FROM campaigns
