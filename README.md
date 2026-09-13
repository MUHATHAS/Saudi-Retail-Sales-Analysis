# Saudi Retail Sales Performance Dashboard (End-to-End SQL & Power BI Project)

## Project Overview
This portfolio project demonstrates an end-to-end data analytics workflow—from database design and exploratory query analysis in **MySQL** to interactive reporting and dashboard engineering in **Power BI**. 

The analysis focuses on a localized dataset of **1,000 retail sales transactions** across the Kingdom of Saudi Arabia, designed to uncover regional revenue trends and consumer payment channel preferences.

## Core Architecture & Workflow
1. **Database Initialization (SQL):** Engineered schemas, established constraints, and successfully imported localized flat-file data into a relational engine.
2. **Exploratory Data Analysis (SQL):** Hand-wrote complex calculations to aggregate transactional health, calculate average order metrics, and segment market share.
3. **Data Modeling & DAX Calculation (Power BI):** Established secure connectivity parameters, validated temporal data structures, and generated dynamic calculations.
4. **Interactive Dashboard Design (Power BI):** Assembled visual panels tracking operational KPIs, regional performance gaps, payment methodologies, and chronological sales momentum.

## SQL Exploratory Queries
SELECT 
    SUM(TotalSales_SAR) AS Total_Revenue_SAR,
    COUNT(TransactionID) AS Total_Orders,
    SUM(Quantity) AS Total_Items_Sold,
    ROUND(AVG(TotalSales_SAR), 2) AS Average_Order_Value_SAR
FROM SalesTransactions;

## Key Business Insights Uncovered
* **Regional Dominance:** Provincial revenue metrics isolated **Riyadh** and **Jeddah** as primary high-volume business centers, while **Dammam** represented rapid market acceleration opportunities.
* **Payment Ecosystem Evolution:** Modern localized transaction channels (**Mada** and **Apple Pay**) generated the largest share of processing metrics compared to legacy payment formats, emphasizing the success of digital wallet adoption in the Kingdom.
* **Temporal Patterns:** Line trends isolated clear consumer spending surges linked to regional calendar dynamics and purchasing cycles.

## Technical Skills Demonstrated
* Relational Schema Development (MySQL)
* Advanced Aggregations & Data Type Casting
* Dynamic DAX Measure Construction
* Visual Hierarchy and Report Layout Design
* Dynamic DAX Measure Construction
* Visual Hierarchy and Report Layout Design
