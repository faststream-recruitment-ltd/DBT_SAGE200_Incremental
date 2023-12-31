{{ config(
    indexes = [{'columns':['_airbyte_unique_key'],'unique':True}],
    unique_key = "_airbyte_unique_key",
    schema = "sage200_etl_frl",
    tags = [ "top-level" ]
) }}
-- Final base SQL model
-- depends_on: {{ ref('departments_scd') }}
select
    _airbyte_unique_key,
    contact_name,
    code,
    contact_email_address,
    {{ adapter.quote('name') }},
    date_time_updated,
    contact_details,
    {{ adapter.quote('id') }},
    date_time_created,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    {{ current_timestamp() }} as _airbyte_normalized_at,
    _airbyte_departments_hashid
from {{ ref('departments_scd') }}
-- departments from {{ source('sage200_etl_frl', '_airbyte_raw_departments') }}
where 1 = 1
and _airbyte_active_row = 1
{{ incremental_clause('_airbyte_emitted_at', this) }}

