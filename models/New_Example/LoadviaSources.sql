{{ config(materialized='table') }}

select * from {{ source('Source_Ref','PRODUCT') }}

---SELECT * FROM PRODUCT
