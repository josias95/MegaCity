class CreateEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.string :descripcion
      t.date :fecha
      t.string :hora

      t.timestamps
    end
  end
end
