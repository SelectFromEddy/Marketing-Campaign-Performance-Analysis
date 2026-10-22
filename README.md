# Marketing Campaign Performance Analysis

## Overview

This project analyzes digital advertising campaign performance to identify opportunities for improving profitability and marketing efficiency.

Using PostgreSQL, SQL, and Power BI, campaign data was analyzed across advertising platforms and campaign objectives to determine which initiatives generated the strongest business results and where future advertising budget should be allocated.

---

## Business Question

**How should advertising budget be allocated across platforms and campaign objectives to maximize profit while improving marketing efficiency?**

---

## Tools Used

- PostgreSQL
- SQL
- Power BI

---

## Dataset

**Tech Advertising Campaign Performance Dataset**

Key fields analyzed:

- Platform
- Campaign Objective
- Ad Spend
- Revenue
- Profit
- ROAS
- CPA
- Conversions

---

## Methodology

### Data Audit

Before analysis, the dataset was reviewed and validated to ensure data quality.

Validation checks included:

- Row count verification
- Missing value assessment
- Duplicate record review
- Category validation
- KPI verification

### Business Analysis

SQL was used to evaluate:

- Overall marketing performance
- Platform profitability
- Campaign objective performance
- Customer acquisition efficiency
- Budget allocation opportunities

### Dashboard Development

Power BI was used to create an executive-facing dashboard focused on four KPIs and three supporting visuals.

#### KPIs

- Total Ad Spend
- Total Profit
- Average ROAS
- Average CPA

#### Visualizations

- Profit by Platform
- Average ROAS by Campaign Objective
- Average CPA by Platform

---

## Key Findings

### Overall Marketing Performance

- Generated **$240.7M** in profit from **$43.46M** in advertising spend.
- Achieved an average **ROAS of 7.52x**.
- Generated approximately **$5.54 in profit for every $1 invested** in advertising.
- Produced more than **655K conversions** while maintaining an average CPA of **$190.90**.

### Platform Performance

- Google Ads generated the highest total profit.
- Google Ads contributed approximately **33%** of total campaign profit.
- Google Ads and Facebook together generated nearly **60%** of total campaign profit.

### Campaign Objective Performance

- Conversion-focused campaigns achieved the highest average ROAS at **9.20x**.
- Conversion campaigns generated approximately **2.3x greater return on ad spend** than Brand Awareness campaigns.
- Conversion-focused campaigns delivered the strongest return on investment across all objectives.

### Customer Acquisition Efficiency

- Facebook achieved the lowest CPA at approximately **$118 per acquisition**.
- LinkedIn recorded the highest CPA at approximately **$379 per acquisition**.
- Facebook demonstrated the strongest balance between profitability and acquisition efficiency.

### Budget Allocation Opportunity

The analysis identified three clear performance leaders:

- Google Ads generated the highest profit.
- Conversion campaigns delivered the highest ROAS.
- Facebook achieved the lowest CPA.

Together, these findings suggest that future advertising investments should prioritize profitability, return on investment, and acquisition efficiency simultaneously.

---

## Recommendation

Based on the analysis:

- Increase investment in **Google Ads** due to its strong contribution to overall profitability and its role as the highest profit-generating platform.

- Prioritize **Conversion-focused campaigns** because they consistently produced the highest ROAS and delivered the strongest return on advertising spend.

- Continue leveraging **Facebook** as an efficient customer acquisition channel due to its low CPA, strong profitability, and balanced performance across key metrics.

- Explore opportunities to scale **TikTok** campaigns strategically, as TikTok generated the highest profit-per-dollar-spent ratio, producing approximately **$10.18 in profit for every $1 invested**, indicating strong advertising efficiency.

- Review lower-performing platforms and campaign objectives for optimization opportunities before allocating additional budget.

Future marketing investments should prioritize initiatives that demonstrate:

- Strong profitability
- High return on ad spend (ROAS)
- Efficient customer acquisition costs (CPA)
- Strong profit efficiency per advertising dollar invested

---

## Dashboard

### KPI Cards

- Total Ad Spend
- Total Profit
- Average ROAS
- Average CPA

### Visuals

1. Profit by Platform
2. Average ROAS by Campaign Objective
3. Average CPA by Platform

---

## Repository Structure

```text
Marketing-Campaign-Performance-Analysis/

├── data/
│   └── tech_advertising_campaigns_dataset.csv
│
├── scripts/
│   ├── 01_data_audit.sql
│   └── 02_business_analysis.sql
│
├── dashboard/
│   └── marketing_campaign_dashboard.pbix
│
├── documentation/
│   ├── insights.txt
│   
│
└── README.md
```

---

## Skills Demonstrated

- SQL Querying
- Data Validation
- Data Auditing
- KPI Development
- Business Analysis
- Marketing Analytics
- Data Storytelling
- Dashboard Design
- PostgreSQL
- Power BI

---

## Future Improvements

Future iterations of this project could include:

- Audience segmentation analysis
- Device-level performance analysis
- Marketing attribution analysis
- Budget optimization modeling
- Predictive campaign performance forecasting

---

## Key Takeaway

This analysis demonstrates how campaign performance data can be transformed into actionable business recommendations through structured SQL analysis, KPI development, and executive-focused dashboard design.

The results identified clear opportunities to improve future marketing performance by focusing investment on high-profit platforms, high-ROAS campaign objectives, and efficient customer acquisition channels.
