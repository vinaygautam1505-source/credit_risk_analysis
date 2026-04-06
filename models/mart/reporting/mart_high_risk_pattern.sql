SELECT
     
  CASE 
    WHEN f.INTEREST_RATE >= 20 THEN 'Highest_Roi'
    WHEN f.INTEREST_RATE >= 15 THEN 'High_Roi'
    WHEN f.INTEREST_RATE >= 10 THEN 'Average_Roi'
    ELSE 'Min_Roi'
  END AS ROI_BUCKET,

     
  CASE 
    WHEN f.CIBIL_SCORE < 600 THEN 'Poor'
    WHEN f.CIBIL_SCORE < 700 THEN 'Average'
    WHEN f.CIBIL_SCORE < 750 THEN 'Good'
    WHEN f.CIBIL_SCORE BETWEEN 750 AND 800 THEN 'Strong'
    ELSE 'Excellent'
  END AS CIBIL_BUCKET,
  
  CASE
    WHEN e.INCOME < 300000 THEN 'Poor_Income'
    WHEN e.INCOME < 500000 THEN 'Medium_Income'
  WHEN e.INCOME < 800000 THEN 'High_Income'
    ELSE 'Excellent_INCOME'
  END AS INCOME_BUCKET,

  COUNT(*) AS TOTAL_CUSTOMERS,

  COUNT_IF(l.LOAN_STATUS = 'Default') AS DEFAULT_CUSTOMERS,

  ROUND(
    COUNT_IF(l.LOAN_STATUS = 'Default') * 100.0 / COUNT(*),
    2
  ) AS DEFAULT_RATE

FROM {{ ref('fact_credit_risk_analysis') }} f
  JOIN {{ ref('dim_loan_profile')}} l
  ON f.CUSTOMER_ID = l.CUSTOMER_ID

       JOIN {{ ref('dim_employment')}} e
  ON f.CUSTOMER_ID = e.CUSTOMER_ID


GROUP BY ROI_BUCKET, INCOME_BUCKET, CIBIL_BUCKET
ORDER BY DEFAULT_RATE DESC
