json.array!(@subtipo_residuos) do |subtipo_residuo|
  json.extract! subtipo_residuo, :id, :nombre, :tipoResiduo_id
  json.url subtipo_residuo_url(subtipo_residuo, format: :json)
end
