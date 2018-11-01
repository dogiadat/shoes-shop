class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.integer :status
      t.timestamps
    end
  end
end
