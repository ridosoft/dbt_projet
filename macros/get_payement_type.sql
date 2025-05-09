{# creation de macro pour recupere le type des patyement en format string au lieu de int 1 -2 -3 ....#}

{% macro ma_fonction_recup_type_payement(x) -%}
    case {{ x }}
        WHEN 1 then 'Credit Card'
        WHEN 2 then 'Cash'
        WHEN 3 then 'No Charge'
        WHEN 4 then 'Discharge'
        WHEN 5 then 'Unknow'
        WHEN 6 then 'Voided trip'
    end
{%- endmacro %}