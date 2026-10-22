/*
BUSINESS QUESTION

How should the company reallocate advertising budget
across platforms and campaign types to maximize
profitability and marketing efficiency?

*/

-- This query displays profit by platform

SELECT
    platform,
    ROUND(SUM(profit),2) AS total_profit
FROM campaigns_raw
GROUP BY platform
ORDER BY total_profit DESC;

-- This query displays ROAS by platform

SELECT
    platform,
    ROUND(AVG(roas),2) AS avg_roas
FROM campaigns_raw
GROUP BY platform
ORDER BY avg_roas DESC; 

-- This query displays cost per acquisition by platform

SELECT
    platform,
    ROUND(AVG(cpa),2) AS avg_cpa
FROM campaigns_raw
GROUP BY platform
ORDER BY avg_cpa;

-- This query displays profit by objective

SELECT
    campaign_objective,
    ROUND(SUM(profit),2) AS total_profit
FROM campaigns_raw
GROUP BY campaign_objective
ORDER BY total_profit DESC;

-- Profit Per Dollar Spent

SELECT
platform,
ROUND(
SUM(profit) /
SUM(ad_spend),
2
) AS profit_per_dollar
FROM campaigns_raw
GROUP BY platform
ORDER BY profit_per_dollar DESC;

-- Profit Share by Platform

SELECT
    platform,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND(
        SUM(profit) * 100.0 /
        SUM(SUM(profit)) OVER (),
        2
    ) AS profit_share_pct
FROM campaigns_raw
GROUP BY platform
ORDER BY total_profit DESC;

-- This query displays ROAS by objective

SELECT
    campaign_objective,
    ROUND(AVG(roas),2) AS avg_roas
FROM campaigns_raw
GROUP BY campaign_objective
ORDER BY avg_roas DESC;

-- This query displays best combination

SELECT
    platform,
    campaign_objective,
    ROUND(SUM(profit),2) AS total_profit
FROM campaigns_raw
GROUP BY platform, campaign_objective
ORDER BY total_profit DESC;

-- This query displays top campaigns
SELECT
    campaign_id,
    platform,
    campaign_objective,
    profit,
    roas
FROM campaigns_raw
ORDER BY profit DESC
LIMIT 10;

-- This query displays the worst campaigns
SELECT
    campaign_id,
    platform,
    campaign_objective,
    profit,
    roas
FROM campaigns_raw
ORDER BY profit ASC
LIMIT 10;

-- This query displays budget efficiency
SELECT
    platform,
    ROUND(SUM(ad_spend),2) AS spend,
    ROUND(SUM(profit),2) AS profit
FROM campaigns_raw
GROUP BY platform
ORDER BY profit DESC;

--------------------
-------KPI's--------
--------------------

-- Total Profit

SELECT ROUND(SUM(profit),2)
FROM campaigns_raw;


-- Average ROAS

SELECT ROUND(AVG(roas),2)
FROM campaigns_raw;


-- Total Ad Spend

SELECT ROUND(SUM(ad_spend),2) 
FROM campaigns_raw;


-- Average CPA

SELECT ROUND(AVG(cpa),2)
FROM campaigns_raw;

/*
KEY FINDINGS

1. Marketing generated $240.7M profit from
   $43.46M in advertising spend, producing
   $5.54 profit for every $1 invested.

2. Google Ads generated the highest total profit.

3. Conversion campaigns achieved the strongest ROAS.

4. Facebook achieved the lowest CPA while
   maintaining strong profitability.

5. While Google Ads generated the highest total profit, 
   TikTok generated the highest profit per advertising dollar invested, 
   producing approximately $10.18 in profit for every $1 spent. 
   Facebook also demonstrated strong efficiency at $9.39 per dollar spent.

RECOMMENDATION

Increase investment in Google Ads due to its
strong profit contribution.

Prioritize Conversion-focused campaigns because
they generate the highest ROAS.

Continue leveraging Facebook as an efficient
customer acquisition channel due to its low CPA
and strong profitability.
*/