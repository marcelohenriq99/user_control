json.extract! delivery, :id, :description, :priority, :status, :user_id, :client_id, :product_id, :total, :created_at, :updated_at
json.url delivery_url(delivery, format: :json)
