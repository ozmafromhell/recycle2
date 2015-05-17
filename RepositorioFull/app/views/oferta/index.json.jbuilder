json.array!(@oferta) do |ofertum|
  json.extract! ofertum, :id, :titulo, :tipoResiduo_id, :subtipoResiduo_id, :desde, :hasta, :transporte, :atencionDesde, :atencionHasta
  json.url ofertum_url(ofertum, format: :json)
end
