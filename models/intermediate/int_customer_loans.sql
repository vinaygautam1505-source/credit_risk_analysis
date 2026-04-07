SELECT
  
c.CUSTOMER_ID,
c.AGE,
c.GENDER,
c.CITY,

e.EMPLOYMENT_STATUS,
e.COMPANY_TYPE,
e.INCOME,

l.EXISTING_LOANS,
l.LOAN_PURPOSE,
l.LOAN_STATUS,

f.CIBIL_SCORE,
f.LOAN_AMOUNT,
f.INTEREST_RATE,
f.LOAN_TENURE_MONTHS,
f.DEBT_TO_INCOME_RATIO

FROM {{ ref('fact_credit_risk_analysis') }} f
  LEFT JOIN {{ ref('dim_customer') }} c
  ON f.CUSTOMER_ID = c.CUSTOMER_ID

  LEFT JOIN {{ ref('dim_cemployment') }} e
  ON f.CUSTOMER_ID = e.CUSTOMER_ID

  LEFT JOIN {{ ref('dim_loan_profile') }} l
  ON f.CUSTOMER_ID = l.CUSTOMER_ID
  
