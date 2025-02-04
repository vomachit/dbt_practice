{{
    config(
        materialized = 'table',
    )
}}

select 
    aircraft_code, 
    model
from
    {{ source('demo_src', 'aircrafts') }}