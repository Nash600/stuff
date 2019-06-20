class AddUserRefToAdd < ActiveRecord::Migration[5.2]
  def change
    add_reference :adds, :user, foreign_key: true
  end
end
