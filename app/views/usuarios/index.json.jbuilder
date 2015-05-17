json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :contrasena, :telefono, :correo, :direccion, :rol, :fecha_de_nacimiento, :comuna_id
  json.url usuario_url(usuario, format: :json)
end
