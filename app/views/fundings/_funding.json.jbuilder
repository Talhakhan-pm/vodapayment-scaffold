json.extract! funding, :id, :title, :checking_num, :routing_num, :created_at, :updated_at
json.url funding_url(funding, format: :json)
