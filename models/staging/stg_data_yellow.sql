{{ config(materialized="view") }}

select *,
    {{ ma_fonction_recup_type_payement('payment_type') }} as payment_type_str

from {{ source('raw', 'raw_yellow') }}
