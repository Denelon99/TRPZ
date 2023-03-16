json.extract! commodity, :id, :name, :price, :quantity, :created_at, :updated_at
json.url commodity_url(commodity, format: :json)
