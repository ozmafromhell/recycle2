class CreateComunas < ActiveRecord::Migration
  def change
    create_table :comunas do |t|
      t.string :nombre
      t.references :ciudad, index: true

      t.timestamps
    end
  end
end
