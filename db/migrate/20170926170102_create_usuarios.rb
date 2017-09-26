class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellidos
      t.string :telefono
      t.string :ciudad
      t.string :direccion
      t.string :fechaNacimiento
      t.string :genero
      t.string :correo
      t.string :contrasena

      t.timestamps
    end
  end
end
