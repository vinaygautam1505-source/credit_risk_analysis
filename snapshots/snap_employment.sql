{% snapshot snap_employment %}

{{
  config(
  target_schema = 'SNAPSHOTS',
  unique_key = 'CUSTOMER_ID',
  strategy= 'check',
  check_cols = ['EMPLOYMENT_STATUS', 'COMPANY_TYPE', 'INCOME']
  )
  }}
SELECT
CUSTOMER_ID,
EMPLOYMENT_STATUS,
COMPANY_TYPE,
INCOME
FROM {{ ref('dim_employment') }}

{% endsnapshot %}
