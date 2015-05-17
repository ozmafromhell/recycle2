class CreateOferta < ActiveRecord::Migration
  def change
    create_table :oferta do |t|
      t.string :titulo
      t.references :tipoResiduo, index: true
      t.references :subtipoResiduo, index: true
      t.date :desde
      t.date :hasta
      t.boolean :transporte
      t.time :atencionDesde
      t.time :atencionHasta

      t.timestamps
    end
  end
end
