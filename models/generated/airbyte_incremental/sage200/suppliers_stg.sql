{{ config(
    indexes = [{'columns':['_airbyte_emitted_at'],'type':'btree'}],
    unique_key = '_airbyte_ab_id',
    schema = "_airbyte_sage200_etl_stg_frl",
    tags = [ "top-level-intermediate" ]
) }}
-- SQL model to build a hash column based on the values of this record
-- depends_on: {{ ref('suppliers_ab2') }}
select
    {{ dbt_utils.surrogate_key([
        'mainAddress_address_1',
	    'mainAddress_address_2',
	    'mainAddress_address_3',
	    'mainAddress_address_4',
	    'mainAddress_city',
	    'mainAddress_county',
	    'mainAddress_country',
	    'mainAddress_code',
	    'mainAddress_postcode',
        'account_type',
        'vat_number',
        'telephone_subscriber_number',
        'reference',
        'balance',
        'default_nominal_code_cost_centre',
        'default_nominal_code_department',
        'country_code_id',
        adapter.quote('id'),
        'payment_terms_days',
        'trading_terms',
        'months_to_keep_transactions',
        'spare_text_3',
        'spare_number_7',
        'spare_text_2',
        'spare_number_6',
        'spare_text_5',
        'spare_number_9',
        'analysis_code_2',
        'payment_terms_basis',
        'spare_text_4',
        'spare_number_8',
        'analysis_code_1',
        'spare_text_7',
        'analysis_code_4',
        'spare_text_6',
        'analysis_code_3',
        'spare_text_9',
        'analysis_code_6',
        'spare_text_8',
        'analysis_code_5',
        'analysis_code_8',
        'analysis_code_7',
        'spare_number_1',
        'analysis_code_9',
        'spare_number_3',
        'spare_number_2',
        'spare_text_1',
        'spare_number_5',
        'spare_number_4',
        'credit_bureau_id',
        'order_priority',
        adapter.quote('name'),
        'short_name',
        'early_settlement_discount_percent',
        'payment_group_id',
        'spare_number_10',
        'fax_subscriber_number',
        'fax_country_code',
        'credit_position_id',
        'fax_area_code',
        'analysis_code_20',
        'telephone_area_code',
        'early_settlement_discount_days',
        'default_nominal_code_reference',
        'factor_house_id',
        'value_of_current_orders_in_pop',
        'credit_limit',
        'status_reason',
        'website',
        'credit_reference',
        'telephone_country_code',
        'date_time_updated',
        boolean_to_string('on_hold'),
        'analysis_code_10',
        'analysis_code_11',
        'analysis_code_12',
        'analysis_code_13',
        boolean_to_string('is_supplier_payments_enabled'),
        boolean_to_string('spare_bool_5'),
        'analysis_code_14',
        'analysis_code_15',
        'exchange_rate_type',
        'spare_text_10',
        'analysis_code_16',
        'default_tax_code_id',
        'analysis_code_17',
        'analysis_code_18',
        'analysis_code_19',
        boolean_to_string('spare_bool_3'),
        'date_time_created',
        boolean_to_string('spare_bool_4'),
        'currency_id',
        boolean_to_string('spare_bool_1'),
        'account_opened',
        boolean_to_string('spare_bool_2'),
        boolean_to_string('terms_agreed'),
        'account_status_type',
    ]) }} as _airbyte_suppliers_hashid,
    tmp.*
from {{ ref('suppliers_ab2') }} tmp
-- suppliers
where 1 = 1
{{ incremental_clause('_airbyte_emitted_at', this) }}

