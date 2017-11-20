class AddPuntosToUsuario < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :puntos, :integer, default: 0
  end
end
