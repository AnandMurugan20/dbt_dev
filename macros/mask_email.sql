{%macro mask_email(email_column)%}
    REGEXP_REPLACE({{email_column}},'(\\w{2})[^@]+(@.+)', '\\1****\\2')
{%endmacro%}

