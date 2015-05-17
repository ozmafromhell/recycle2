class CreateSubtipoResiduos < ActiveRecord::Migration
  def change
    create_table :subtipo_residuos do |t|
      t.string :nombre
      t.references :tipoResiduo, index: true

      t.timestamps
    end
  end
end
