json.extract! factura, :id, :estado, :valor, :created_at, :updated_at
json.url factura_url(factura, format: :json)
