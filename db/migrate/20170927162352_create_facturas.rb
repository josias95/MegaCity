class CreateFacturas < ActiveRecord::Migration[5.1]
  def change
    create_table :facturas do |t|
      t.string :estado
      t.integer :valor

      t.timestamps
    end
  end
end
