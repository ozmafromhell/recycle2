json.array!(@estado_productos) do |estado_producto|
  json.extract! estado_producto, :id, :estado_id, :oferta_id
  json.url estado_producto_url(estado_producto, format: :json)
end
