{{ config(
    indexes = [{'columns':['_airbyte_emitted_at'],'type':'btree'}],
    unique_key = '_airbyte_ab_id',
    schema = "_airbyte_sage200_etl",
    tags = [ "top-level-intermediate" ]
) }}
-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
-- depends_on: {{ ref('customers_ab1') }}
select
    cast(office_type as {{ dbt_utils.type_string() }}) as office_type,
    cast(account_type as {{ dbt_utils.type_string() }}) as account_type,
    cast(balance as {{ dbt_utils.type_float() }}) as balance,
    cast(default_nominal_code_cost_centre as {{ dbt_utils.type_string() }}) as default_nominal_code_cost_centre,
    cast({{ adapter.quote('id') }} as {{ dbt_utils.type_float() }}) as {{ adapter.quote('id') }},
    cast(payment_terms_days as {{ dbt_utils.type_float() }}) as payment_terms_days,
    cast(trading_terms as {{ dbt_utils.type_string() }}) as trading_terms,
    cast(customer_discount_group_id as {{ dbt_utils.type_float() }}) as customer_discount_group_id,
    cast(months_to_keep_transactions as {{ dbt_utils.type_float() }}) as months_to_keep_transactions,
    cast(spare_text_3 as {{ dbt_utils.type_string() }}) as spare_text_3,
    cast(spare_number_7 as {{ dbt_utils.type_float() }}) as spare_number_7,
    cast(spare_text_2 as {{ dbt_utils.type_string() }}) as spare_text_2,
    cast(spare_number_6 as {{ dbt_utils.type_float() }}) as spare_number_6,
    cast(spare_text_5 as {{ dbt_utils.type_string() }}) as spare_text_5,
    cast(spare_number_9 as {{ dbt_utils.type_float() }}) as spare_number_9,
    cast(analysis_code_2 as {{ dbt_utils.type_string() }}) as analysis_code_2,
    cast(spare_text_4 as {{ dbt_utils.type_string() }}) as spare_text_4,
    cast(spare_number_8 as {{ dbt_utils.type_float() }}) as spare_number_8,
    cast(analysis_code_1 as {{ dbt_utils.type_string() }}) as analysis_code_1,
    cast(spare_text_7 as {{ dbt_utils.type_string() }}) as spare_text_7,
    cast(analysis_code_4 as {{ dbt_utils.type_string() }}) as analysis_code_4,
    cast(spare_text_6 as {{ dbt_utils.type_string() }}) as spare_text_6,
    cast(analysis_code_3 as {{ dbt_utils.type_string() }}) as analysis_code_3,
    cast(spare_text_9 as {{ dbt_utils.type_string() }}) as spare_text_9,
    cast(analysis_code_6 as {{ dbt_utils.type_string() }}) as analysis_code_6,
    cast(spare_text_8 as {{ dbt_utils.type_string() }}) as spare_text_8,
    cast(analysis_code_5 as {{ dbt_utils.type_string() }}) as analysis_code_5,
    cast(analysis_code_8 as {{ dbt_utils.type_string() }}) as analysis_code_8,
    cast(analysis_code_7 as {{ dbt_utils.type_string() }}) as analysis_code_7,
    cast(spare_number_1 as {{ dbt_utils.type_float() }}) as spare_number_1,
    cast(analysis_code_9 as {{ dbt_utils.type_string() }}) as analysis_code_9,
    cast(spare_number_3 as {{ dbt_utils.type_float() }}) as spare_number_3,
    cast(spare_number_2 as {{ dbt_utils.type_float() }}) as spare_number_2,
    cast(spare_text_1 as {{ dbt_utils.type_string() }}) as spare_text_1,
    cast(spare_number_5 as {{ dbt_utils.type_float() }}) as spare_number_5,
    cast(spare_number_4 as {{ dbt_utils.type_float() }}) as spare_number_4,
    cast(credit_bureau_id as {{ dbt_utils.type_float() }}) as credit_bureau_id,
    cast(short_name as {{ dbt_utils.type_string() }}) as short_name,
    cast(spare_number_10 as {{ dbt_utils.type_float() }}) as spare_number_10,
    cast(fax_area_code as {{ dbt_utils.type_string() }}) as fax_area_code,
    cast(analysis_code_20 as {{ dbt_utils.type_string() }}) as analysis_code_20,
    cast(telephone_area_code as {{ dbt_utils.type_string() }}) as telephone_area_code,
    cast(duns_code as {{ dbt_utils.type_string() }}) as duns_code,
    cast(default_nominal_code_reference as {{ dbt_utils.type_string() }}) as default_nominal_code_reference,
    cast(invoice_discount_percent as {{ dbt_utils.type_float() }}) as invoice_discount_percent,
    cast(invoice_line_discount_percent as {{ dbt_utils.type_float() }}) as invoice_line_discount_percent,
    cast(status_reason as {{ dbt_utils.type_string() }}) as status_reason,
    cast(average_time_to_pay as {{ dbt_utils.type_float() }}) as average_time_to_pay,
    cast(website as {{ dbt_utils.type_string() }}) as website,
    cast(telephone_country_code as {{ dbt_utils.type_string() }}) as telephone_country_code,
    cast(date_time_updated as timestamp) as date_time_updated,
    cast(analysis_code_10 as {{ dbt_utils.type_string() }}) as analysis_code_10,
    cast(analysis_code_11 as {{ dbt_utils.type_string() }}) as analysis_code_11,
    cast(analysis_code_12 as {{ dbt_utils.type_string() }}) as analysis_code_12,
    cast(analysis_code_13 as {{ dbt_utils.type_string() }}) as analysis_code_13,
    {{ cast_to_boolean('spare_bool_5') }} as spare_bool_5,
    cast(analysis_code_14 as {{ dbt_utils.type_string() }}) as analysis_code_14,
    cast(analysis_code_15 as {{ dbt_utils.type_string() }}) as analysis_code_15,
    cast(analysis_code_16 as {{ dbt_utils.type_string() }}) as analysis_code_16,
    cast(default_tax_code_id as {{ dbt_utils.type_float() }}) as default_tax_code_id,
    cast(analysis_code_17 as {{ dbt_utils.type_string() }}) as analysis_code_17,
    cast(analysis_code_18 as {{ dbt_utils.type_string() }}) as analysis_code_18,
    cast(analysis_code_19 as {{ dbt_utils.type_string() }}) as analysis_code_19,
    cast(price_band_id as {{ dbt_utils.type_float() }}) as price_band_id,
    {{ cast_to_boolean('use_consolidated_billing') }} as use_consolidated_billing,
    {{ cast_to_boolean('spare_bool_3') }} as spare_bool_3,
    {{ cast_to_boolean('spare_bool_4') }} as spare_bool_4,
    {{ cast_to_boolean('produce_statements_for_customer') }} as produce_statements_for_customer,
    {{ cast_to_boolean('spare_bool_1') }} as spare_bool_1,
    cast(account_opened as {{ dbt_utils.type_string() }}) as account_opened,
    {{ cast_to_boolean('spare_bool_2') }} as spare_bool_2,
    {{ cast_to_boolean('terms_agreed') }} as terms_agreed,
    cast(vat_number as {{ dbt_utils.type_string() }}) as vat_number,
    cast(telephone_subscriber_number as {{ dbt_utils.type_string() }}) as telephone_subscriber_number,
    cast(reference as {{ dbt_utils.type_string() }}) as reference,
    cast(value_of_current_orders_in_sop as {{ dbt_utils.type_float() }}) as value_of_current_orders_in_sop,
    cast(order_value_discount_id as {{ dbt_utils.type_float() }}) as order_value_discount_id,
    cast(default_nominal_code_department as {{ dbt_utils.type_string() }}) as default_nominal_code_department,
    cast(country_code_id as {{ dbt_utils.type_float() }}) as country_code_id,
    cast(payment_terms_basis as {{ dbt_utils.type_string() }}) as payment_terms_basis,
    cast(order_priority as {{ dbt_utils.type_string() }}) as order_priority,
    cast({{ adapter.quote('name') }} as {{ dbt_utils.type_string() }}) as {{ adapter.quote('name') }},
    cast(associated_head_office_id as {{ dbt_utils.type_float() }}) as associated_head_office_id,
    cast(early_settlement_discount_percent as {{ dbt_utils.type_float() }}) as early_settlement_discount_percent,
    cast(finance_charge_id as {{ dbt_utils.type_float() }}) as finance_charge_id,
    cast(fax_subscriber_number as {{ dbt_utils.type_string() }}) as fax_subscriber_number,
    {{ cast_to_boolean('use_tax_code_as_default') }} as use_tax_code_as_default,
    cast(fax_country_code as {{ dbt_utils.type_string() }}) as fax_country_code,
    cast(credit_position_id as {{ dbt_utils.type_float() }}) as credit_position_id,
    cast(early_settlement_discount_days as {{ dbt_utils.type_float() }}) as early_settlement_discount_days,
    cast(credit_limit as {{ dbt_utils.type_float() }}) as credit_limit,
    cast(credit_reference as {{ dbt_utils.type_string() }}) as credit_reference,
    {{ cast_to_boolean('on_hold') }} as on_hold,
    cast(exchange_rate_type as {{ dbt_utils.type_string() }}) as exchange_rate_type,
    cast(spare_text_10 as {{ dbt_utils.type_string() }}) as spare_text_10,
    cast(date_time_created as timestamp) as date_time_created,
    cast(currency_id as {{ dbt_utils.type_float() }}) as currency_id,
    cast(account_status_type as {{ dbt_utils.type_string() }}) as account_status_type,
    _airbyte_ab_id,
    _airbyte_emitted_at,
    {{ current_timestamp() }} as _airbyte_normalized_at
from {{ ref('customers_ab1') }}
-- customers
where 1 = 1
{{ incremental_clause('_airbyte_emitted_at', this) }}

