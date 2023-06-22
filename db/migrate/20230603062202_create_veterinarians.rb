class CreateVeterinarians < ActiveRecord::Migration[6.1]
  def change
    create_table :veterinarians do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.string :avatar
      t.integer :category_id

      t.timestamps
    end
    
    
    add_index :veterinarians, :email,                unique: true
    add_index :veterinarians, :reset_password_token, unique: true

  end
end