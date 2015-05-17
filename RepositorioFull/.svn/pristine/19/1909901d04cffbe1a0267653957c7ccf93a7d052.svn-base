json.array!(@comunas) do |comuna|
  json.extract! comuna, :id, :nombre, :ciudad_id
  json.url comuna_url(comuna, format: :json)
end
