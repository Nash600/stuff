class CreateAdds < ActiveRecord::Migration[5.2]
  def change
    create_table :adds do |t|
      t.string :title
      t.text :text
      t.string :category

      t.timestamps
    end
  end
end
