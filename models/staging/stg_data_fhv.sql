{{ config(materialized="view") }}

select * from {{ source('raw', 'raw_fhv') }}
limit 100