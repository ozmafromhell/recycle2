class CreateInteres < ActiveRecord::Migration
  def change
    create_table :interes do |t|
      t.references :usuario, index: true
      t.references :oferta, index: true
      t.text :motivo
      t.boolean :dinero
      t.boolean :material
      t.string :otro
      t.text :mensaje
      t.timestamp :fecha

      t.timestamps
    end
  end
end
