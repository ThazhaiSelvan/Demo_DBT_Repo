{{ config(materialized='table') }}

select * from {{ source('LEARN_DBT_SCHEMA','PRODUCT') }}

---SELECT * FROM LEARN_DBT_SCHEMA.PRODUCT