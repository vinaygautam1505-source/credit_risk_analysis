# 📊 Credit Risk Analysis Project


## 📌 Project Overview

Banks often struggle to identify high-risk customers.
This project analyzes customer financial data using CIBIL score and loan attributes to evaluate credit risk and improve loan approval decisions.



## 🎯 Objectives

* Total Risk Identification ( Total Default Customers & Total Default Rate)
* Define optimal CIBIL threshold for loan approval
* Identify High Risk Customers( Based on Cibil score, Debt to Income Ratio, Income)
* Identify High Risk Pattern (Total Customers, Default Customers and Default Rates based on cibil_score, employment_status and income)
  


## 🗂️ Data Model

The project follows a layered data modeling approach:

* **Staging Layer:** 'stg_credit_risk_analysis"
* **Fact Table:** 'fact_credit_risk_analysis'
* **Dimension Table:** 'dim_loan_profile', 'dim_customer', 'dim_employment'
* **Mart Table:** 'mart_total_risk_identification', `mart_cibil_threshold`, 'mart_high_risk_customers', 'mart_high_risk_pattern', 'mart_high_risk_loan_analysis', 'mart_income_loan_default_pattern'



## ⚙️ Tools

* **Data Warehouse:** Snowflake
* **Transformation Tool:** dbt
* **Data Ingestion:** Airbyte
* **Visualization:** Power BI
 


## 📈  Analysis


### 🔹 Default Rate Formula

**Default Rate = (Number of Default Customers / Total Customers) × 100**


### 🔹 CIBIL Threshold

* **Poor** (<=600)
* **Average** (601–700)
* **Good** (701-750)
* **Excellent** (>750)



## 📊 Mart Logic

The mart table calculates:

* Default Rate per CIBIL range
* Total default customers
* Total customers

This helps in identifying risk patterns across different credit score segments.



## 🔍 Key Insights

* Customers with **CIBIL ≤ 600** show the highest number of default customers.
* Total Default Customers are 9166 and Total Default Rate is 18.33.
* Default Rate in customers with High_Loan_Amount, Poor_Income, High_Dti is highest 0.3121.
* Default risk is highest in customers with High_Loan_Amount, High_Tenure, and High_Dti.



## 🚀 Business Impact

* Improved loan approval strategy
* Reduced financial risk due to defaults
* Better customer segmentation
* Data-driven decision-making



## 🔄 Lineage



## 👤 Author

**Vinay Gautam**
Aspiring Data Analyst

---
