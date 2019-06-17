class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone, :integer, null: false
  end
end
