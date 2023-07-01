class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :veterinarian, foreign_key: true
      t.string :name, null: false
      t.string :image1, null: false
      t.string :description
      t.timestamps
    end
  end
end