{% snapshot snap_customer %}
{{
    config(
  target_schema = 'SNAPSHOTS'
  unique_key = 'CUSTOMER_ID'
  strategy = 'CHECK'
  check_cols = ['AGE', 'CITY']
  )
  }}

SELECT
CUSTOMER_ID,
GENDER,
AGE,
CITY
FROM {{ ref('dim_customer') }}

(% endsnapshot%)


