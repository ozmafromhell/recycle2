class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :contrasena
      t.string :telefono
      t.string :correo
      t.string :direccion
      t.string :rol
      t.date :fecha_de_nacimiento
      t.references :comuna, index: true

      t.timestamps
    end
  end
end
