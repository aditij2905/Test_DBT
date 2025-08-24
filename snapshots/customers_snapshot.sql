{% snapshot customers_snapshot %}

{{
  config(
    target_schema='snapshots',
    unique_key='customer_id',
    strategy='check',
    check_cols=['first_name', 'last_name', 'email']
  )
}}

SELECT 
    customer_id,
    first_name,
    last_name,
    email,
    updated_at
FROM {{ source('raw', 'customers') }}

{% endsnapshot %}
