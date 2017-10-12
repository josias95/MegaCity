class ChangeColumnPermissionsLevelFromStringToInteger < ActiveRecord::Migration[5.1]
  def change
  	remove_column :usuarios,:permission_level, :string
  	add_column :usuarios,:permission_level, :integer, default: 1
  end
end
