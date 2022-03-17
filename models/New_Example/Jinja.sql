{% set PRODUCTS = ["KitKat", "FiveStar", "Munch"] %}

select
    CUSTID,
    {% for PRODUCTS in PRODUCTS %}
    sum(case when ProdName = '{{PRODUCTS}}' then PRICE end) as {{PRODUCTS}}_PRICE,
    {% endfor %}
    sum(PRICE) as total_amount
from PRODUCT
group by 1