flipkart_order_analysis
DBT Version
dbt_utils Version

This project runs on DBT Cloud and performs all data transformations for CREDIT RISK ANALYSIS.

Overview
This DBT project implents a layered data warehouse pipeline for CREDIT RISK ANALYSIS.

DBT Version: Latest (DBT Cloud environment)

dbt_utils Version: 1.3.3

Data Warehouse: Snowflake

Environments:

DEV (Development): Testing environment
PROD (Production): Live environment for scheduled runs
GitHub Repo: [credit_risk_analysis] [https://github.com/vinaygautam1505-source/credit_risk_analysis]

Staging: Cleans and standardizes raw data from Snowflake.

Mart: 
    Core: Creates dimension and fact tables for analytics.
    Reporting: creates mart tables for business friendly format.


Star Schema
Dimensions: dim_customer, dim_loan_profile, dim_employment
Fact: fact_credit_risk_analysis
Mart: mart_total_risk_identification, mart_cibil_threshold, mart_high_risk_customers, mart_high_risk_pattern

Setup in DBT Cloud
Connect your GitHub repository to DBT Cloud.
Set environment variables:
Snowflake account, user, password
Database, schema, warehouse
Snowflake credentials alone are sufficient for DBT models.
Create a Job and schedule dbt run as needed.
Lineage Diagram
Lineage Diagram

Running Locally (Optional)
git clone https://github.com/vinaygautam1505-source/credit_risk_analysis.git
cd credit_risk_analysis
dbt deps
dbt build
dbt docs serve
