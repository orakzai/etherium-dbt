{{ config(group = 'fraud_risk', access='protected') }}

select
*
from {{ ref('confirmed_fraud') }}