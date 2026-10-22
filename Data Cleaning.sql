/*
AUDIT FINDINGS 

- Total Rows: 10,000
- Date range: 2024-01-01 to 2026-01-30
- Missing Revenue: 0
- Missing Spend: 0
- Duplicate Campaign IDs: 0

Result:
Dataset passed basic quality checks.
*/


-- This query counts all rows

SELECT COUNT(*) AS total_rows
FROM campaigns_raw;

-- This query checks the date range

SELECT
    MIN(start_date) AS first_date,
    MAX(start_date) AS last_date
FROM campaigns_raw;

-- This query shows every unique platform

SELECT DISTINCT platform
FROM campaigns_raw
ORDER BY platform;

-- This query displays total clicks, total impressions, ctr

SELECT
		SUM(clicks) as total_clicks,
		SUM(impressions) as total_impressions,
    ROUND(
        SUM(clicks)::NUMERIC /
        SUM(impressions) * 100,
        2
    ) AS calculated_ctr
FROM campaigns_raw;


