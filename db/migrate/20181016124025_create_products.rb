class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :status
      t.string :image
      t.date :create_at
      t.timestamps
    end
  end
end
