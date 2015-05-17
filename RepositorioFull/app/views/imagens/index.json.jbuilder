json.array!(@imagens) do |imagen|
  json.extract! imagen, :id, :usuario_id, :dato
  json.url imagen_url(imagen, format: :json)
end
