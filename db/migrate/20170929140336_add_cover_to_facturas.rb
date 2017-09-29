class AddCoverToFacturas < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :facturas,:cover
  end
end
