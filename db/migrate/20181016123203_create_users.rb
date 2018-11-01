class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.integer :role, default: 0, null: false
      t.string :password_digest
      t.string :reset_digest
      t.datetime :reset_sent_at
      t.string :remember_digest
      t.timestamps
    end
  end
end
