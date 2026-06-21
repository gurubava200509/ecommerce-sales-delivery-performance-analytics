# E-Commerce Sales & Delivery Performance Analytics

## Project Overview

This project analyzes e-commerce sales and delivery operations using Python, SQL, and Power BI. The objective was to evaluate order performance, delivery efficiency, payment behavior, and regional revenue distribution by transforming raw transactional data into actionable business insights.

The project follows a complete analytics workflow, including data cleaning, exploratory data analysis (EDA), SQL-based reporting, and interactive dashboard development.

---

## Business Questions

* How many orders were processed by the business?
* What is the overall delivery performance?
* How long does delivery take on average?
* What percentage of orders are delivered late?
* How has order volume changed over time?
* Which states generate the highest revenue?
* Which payment methods are most frequently used?
* How effective is the order fulfillment process?

---

## Dataset Information

### Source Datasets

| Dataset     | Records |
| ----------- | ------: |
| Orders      |  99,441 |
| Customers   |  99,441 |
| Payments    | 103,886 |
| Order Items |   112K+ |

### Final Analytical Dataset

| Metric                |   Value |
| --------------------- | ------: |
| Cleaned Orders        |  99,281 |
| Final Dataset Rows    | 114,671 |
| Total Columns         |      27 |
| Total Revenue         | ₹19.70M |
| Total Orders          |   96.2K |
| Average Delivery Days |    11.8 |
| Late Delivery Rate    |    6.3% |

---

## Data Cleaning & EDA

Data preparation was performed using Python (Pandas) to ensure data quality and reliable analysis.

### Data Cleaning

- Validated dataset structure, data types, and missing values.
- Converted timestamp columns into datetime format.
- Removed records with missing order approval timestamps.
- Removed duplicate records.
- Standardized customer state values.
- Merged datasets using:
  - customer_id (Orders ↔ Customers)
  - order_id (Orders ↔ Order Items)
  - order_id (Orders ↔ Payments)
- Created a consolidated analytical dataset for reporting and dashboard development.

### Feature Engineering

Created analytical features including:

* Delivery Days
* Delivery Delay
* Order Month
* Order Year
* Order Month Number

### Exploratory Analysis

* Order Status Distribution
* Monthly Order Trend Analysis
* Delivery Time Analysis
* Delivery Delay Analysis
* Late Delivery Percentage Analysis
* Fulfillment Performance Analysis

---

## SQL Analysis

SQL was used to generate operational and business performance insights.

### Analysis Performed

* Total Orders Analysis
* Total Customers Analysis
* Order Status Distribution
* Monthly Order Trend Analysis
* Average Delivery Time Analysis
* Late Delivery Percentage Analysis
* Late vs On-Time Delivery Analysis
* Delivery Performance by Order Status

---

## Power BI Dashboard

The dashboard provides an interactive view of sales performance and delivery operations.

### Dashboard KPIs

* **Total Revenue:** ₹19.70M
* **Total Orders:** 96.2K
* **Average Delivery Days:** 11.8
* **Late Delivery Rate:** 6.3%

### Dashboard Preview

![Dashboard](dashboard.png)

**Dashboard:** `dashboard.png`

### Project Files

📊 **Power BI Dashboard:** `ECommerce_Dashboard.pbix`

📓 **EDA Notebook:** `ecommerce_eda.ipynb`

🗄️ **SQL Analysis:** `delivery_performance_analysis.sql`

### Dashboard Story

The dashboard highlights business growth, delivery efficiency, payment behavior, and regional revenue performance. Order volume increased over time while delivery operations maintained strong service levels, with most orders delivered on or before the estimated delivery date.

---

## Key Business Insights

### Delivery Performance

* Approximately 97.16% of orders were successfully delivered.
* Average delivery time was 11.8 days.
* Only 6.3% of deliveries arrived later than the estimated delivery date.

### Order Trends

* Order volume showed strong growth throughout the analysis period.
* Increasing order activity indicates growing customer adoption and transaction volume.

### Payment Behavior

* Credit cards accounted for approximately 76.8% of transactions.
* Alternative payment methods represented a smaller share of purchases.

### Geographic Performance

* Revenue was concentrated across a limited number of states.
* SP generated the highest revenue contribution among all states.

---

## Tools & Technologies

* Python
* Pandas
* MySQL
* SQL
* Power BI
* Data Visualization
* Exploratory Data Analysis (EDA)
* Bussiness Intelligence Reporting

---

## Conclusion

This project demonstrates an end-to-end data analytics workflow using Python, SQL, and Power BI. Through data cleaning, exploratory analysis, SQL reporting, and dashboard development, the project evaluates sales performance and delivery efficiency while transforming raw e-commerce data into actionable business insights.
