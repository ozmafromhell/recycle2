class CreateAlcances < ActiveRecord::Migration
  def change
    create_table :alcances do |t|
      t.references :usuario, index: true
      t.references :comuna, index: true

      t.timestamps
    end
  end
end
