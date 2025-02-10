{% macro case_mac(room_price) %}
    case
        when {{ room_price }} <= 50 then 'Normal'
        when {{ room_price }} between 50 and 100 then 'MEDIUM'
        ELSE 'High'
    END
{%endmacro%}