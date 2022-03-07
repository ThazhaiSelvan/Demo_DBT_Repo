-- Coping Records from one to another table
{{ config(materialized='incremental') }}

with Cust_Data as (

SELECT * FROM Customer WHERE LAST_ACTIVE_DATE > SYSDATE()
)

SELECT * FROM Cust_Data