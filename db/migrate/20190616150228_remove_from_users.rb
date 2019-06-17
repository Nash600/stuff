class RemoveFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :city, :string
  end
end
