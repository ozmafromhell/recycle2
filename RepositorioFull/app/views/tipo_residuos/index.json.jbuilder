json.array!(@tipo_residuos) do |tipo_residuo|
  json.extract! tipo_residuo, :id, :nombre
  json.url tipo_residuo_url(tipo_residuo, format: :json)
end
