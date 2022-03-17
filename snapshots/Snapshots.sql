{% snapshot orders_snapshot %}

{{
    config(
      target_database='LEARN_DBT_DB',
      target_schema='LEARN_DBT_DB_SNAPSHOT',
      unique_key='CUSTID',

      strategy='timestamp',
      updated_at='LAST_ACTIVE_DATE',
    )
}}

SELECT * FROM CUSTOMERDATA

{% endsnapshot %}