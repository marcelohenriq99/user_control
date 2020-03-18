json.extract! product, :id, :code, :description, :store_id, :price, :status, :created_at, :updated_at
json.url product_url(product, format: :json)
