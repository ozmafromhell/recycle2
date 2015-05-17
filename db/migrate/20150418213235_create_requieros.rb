class CreateRequieros < ActiveRecord::Migration
  def change
    create_table :requieros do |t|
      t.references :usuario, index: true
      t.references :tipoResiduo, index: true

      t.timestamps
    end
  end
end
