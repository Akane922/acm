# db/migrate/YYYYMMDDHHMMSS_create_animal_care_groups.rb
class CreateAnimalCareGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :animal_care_groups do |t|
      t.string :name
      t.string :organization
      t.string :email
      t.string :encrypted_password
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.string :avatar_image

      t.timestamps
    end
  end
end
