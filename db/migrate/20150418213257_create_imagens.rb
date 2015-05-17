class CreateImagens < ActiveRecord::Migration
  def change
    create_table :imagens do |t|
      t.references :usuario, index: true
      t.string :dato

      t.timestamps
    end
  end
end
