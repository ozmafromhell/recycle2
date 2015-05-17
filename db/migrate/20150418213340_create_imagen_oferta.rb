class CreateImagenOferta < ActiveRecord::Migration
  def change
    create_table :imagen_oferta do |t|
      t.references :imagen, index: true
      t.references :oferta, index: true

      t.timestamps
    end
  end
end
