class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :status
      t.string :image
      t.date :create_at
      t.timestamps
    end
  end
end
