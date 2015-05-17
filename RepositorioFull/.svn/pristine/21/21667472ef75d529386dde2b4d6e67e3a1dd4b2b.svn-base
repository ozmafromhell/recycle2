class CreateCiudads < ActiveRecord::Migration
  def change
    create_table :ciudads do |t|
      t.string :nombre
      t.references :region, index: true

      t.timestamps
    end
  end
end
