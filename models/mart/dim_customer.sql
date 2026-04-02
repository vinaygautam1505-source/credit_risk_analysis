SELECT
CUSTOMER_ID,
AGE,
GENDER,
CITY,
INCOME
FROM {{ref('stg_credit_risk_analysis') }}
