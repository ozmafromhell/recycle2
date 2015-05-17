json.array!(@requieros) do |requiero|
  json.extract! requiero, :id, :usuario_id, :tipoResiduo_id
  json.url requiero_url(requiero, format: :json)
end
