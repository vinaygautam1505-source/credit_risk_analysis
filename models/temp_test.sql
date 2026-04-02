SELECT CUSTOMER_ID, DEBT_TO_INCOME_RATIO, LOAN_STATUS
FROM {{ source('source_credit_risk_analysis', 'SHEET1') }}
WHERE LOAN_STATUS = 'Default';
