json.array!(@imagen_oferta) do |imagen_ofertum|
  json.extract! imagen_ofertum, :id, :imagen_id, :oferta_id
  json.url imagen_ofertum_url(imagen_ofertum, format: :json)
end
