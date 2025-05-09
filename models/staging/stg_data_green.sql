{{ config(materialized="view") }}

select * from {{ source('raw', 'raw_green') }}
limit 100