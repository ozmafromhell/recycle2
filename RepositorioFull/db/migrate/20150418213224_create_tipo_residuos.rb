class CreateTipoResiduos < ActiveRecord::Migration
  def change
    create_table :tipo_residuos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
