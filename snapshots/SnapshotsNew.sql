{% snapshot CUST_DATA_SNAPSHOT %}

{{
    config(
      target_database='LEARN_DBT_DB',
      target_schema='LEARN_DBT_SCHEMA',
      strategy='check',
      unique_key='CUSTID',
      check_cols=['FEEDBACK','FIRSTNAME','LASTNAME'],
    )
}}

--select * from {{ source('Source_Ref', 'CUSTOMERDATA') }}
SELECT * FROM CUSTOMERDATA

{% endsnapshot %}