-- Coping Records from one to another table
{{ config(materialized='table') }}

SELECT * FROM PRODUCT