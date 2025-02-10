{%macro decode_fun(column1)%}
    DECODE({{column1}},
             'POSITIVE','GREEN',
             'NEGATIVE','RED',
             'NEUTRAL','ORANGE',
             'NOT DEFINED')
{%endmacro%}