class AddUsuarioIdToFacturas < ActiveRecord::Migration[5.1]
  def change
    add_reference :facturas, :usuario, index: true
  	add_foreign_key :facturas, :usuarios
  end
end
