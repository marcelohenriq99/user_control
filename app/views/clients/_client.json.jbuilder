json.extract! client, :id, :name, :email, :kind, :created_at, :updated_at
json.url client_url(client, format: :json)
