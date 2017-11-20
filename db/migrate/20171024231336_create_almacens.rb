class CreateAlmacens < ActiveRecord::Migration[5.1]
  def change
    create_table :almacens do |t|
      t.string :nombre
      t.string :ubicacion
      t.string :descripcion
      t.string :telefono
      t.string :horario

      t.timestamps
    end
  end
end
