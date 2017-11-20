class CreatePremios < ActiveRecord::Migration[5.1]
  def change
    create_table :premios do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :valor

      t.timestamps
    end
  end
end
