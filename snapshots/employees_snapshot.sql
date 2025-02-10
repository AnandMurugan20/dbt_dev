{% snapshot employees_snapshot %}
    {{
        config(
            target_schema='snapshots',
            unique_key='employee_id',
            strategy='check',
            check_cols=['first_name', 'last_name', 'department', 'title', 'salary']
        )
    }}

    select employee_id, first_name, last_name, department, title, salary, updated_at
    from {{ source('raw', 'employees')}}
{% endsnapshot %}
