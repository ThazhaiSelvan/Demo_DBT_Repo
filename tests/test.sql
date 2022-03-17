

select
    ProdID,
    Price
from {{ ref('Product')}}
having Price < 0