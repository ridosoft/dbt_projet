-- permet de cree une visualisation des donnee dans Bigquerry
{{ config(materialized="view") }}  

with 

source as (

    select * from {{ source('raw', 'raw_fhv') }}

),

renamed as (

    select
        dispatching_base_num,
        pickup_datetime,
        dropoff_datetime,
        pulocationid,
        dolocationid,
        sr_flag,
        affiliated_base_number

    from source

)

select * from renamed
