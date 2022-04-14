json.extract! identity_verification, :id, :merchant_id, :ssn, :created_at, :updated_at
json.url identity_verification_url(identity_verification, format: :json)
