class ChangeColumnEstado < ActiveRecord::Migration[5.1]
  def change
  	remove_column :facturas,:estado, :string
  	add_column :facturas,:estado, :string, default: ""
  end
end
