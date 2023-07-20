with

payments as (

    select * from {{ ref('stg_payments') }}
)

select
    sum(case when status = 'success' then amount end) as total_revenue
from payments