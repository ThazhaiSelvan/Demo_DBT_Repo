-- Coping Records from one to another table
{{ config(materialized='table') }}

with Cust_Data as (

SELECT * FROM Customer
)

SELECT * FROM Cust_Data