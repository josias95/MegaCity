class CreateMegacities < ActiveRecord::Migration[5.1]
  def change
    create_table :megacities do |t|

      t.timestamps
    end
  end
end
