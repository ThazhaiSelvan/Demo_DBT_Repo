{% snapshot orders_snapshot1 %}

{{
    config(
      target_database='LEARN_DBT_DB',
      target_schema='LEARN_DBT_SCHEMA',
      strategy='check',
      unique_key='CUSTID',
      check_cols=['FEEDBACK','FIRSTNAME','LASTNAME'],
    )
}}

SELECT * FROM CUSTOMERDATA

{% endsnapshot %}