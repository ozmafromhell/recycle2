class CreateEstadoProductos < ActiveRecord::Migration
  def change
    create_table :estado_productos do |t|
      t.references :estado, index: true
      t.references :oferta, index: true

      t.timestamps
    end
  end
end
