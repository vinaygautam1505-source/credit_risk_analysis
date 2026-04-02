SELECT
CUSTOMER_ID,
AGE,
GENDER,
CITY,
FROM {{ref('stg_credit_risk_analysis') }}
