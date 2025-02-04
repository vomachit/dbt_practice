{{
    config(
        materialized = 'ephemeral',
    )
}}
select 
    ticket_no,
	flight_id,
	fare_conditions,
	amount
from
    {{ source('demo_src', 'ticket_flights') }}