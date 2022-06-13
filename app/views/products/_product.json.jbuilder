json.extract! product, :id, :title, :price, :description, :specifications, :created_at, :updated_at
json.url product_url(product, format: :json)
