json.extract! business_verification, :id, :business_name, :ein, :merchant_id, :created_at, :updated_at
json.url business_verification_url(business_verification, format: :json)
