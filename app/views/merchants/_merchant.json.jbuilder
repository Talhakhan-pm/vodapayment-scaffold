json.extract! merchant, :id, :first_name, :middle_name, :last_name, :created_at, :updated_at
json.url merchant_url(merchant, format: :json)
