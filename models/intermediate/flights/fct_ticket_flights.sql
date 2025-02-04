{{
    config(
        materialized = 'view',
    )
}}
select 
    ticket_no,
	flight_id,
	fare_conditions,
	amount
from
    {{ ref('stg_fligths__ticket_flights') }}
