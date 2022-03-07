--Employee
{{ config(materialized='table') }}
with source_data as (

    select 3 as EMPID
    union all
    select 4 as EMPID

)

select *
from source_data