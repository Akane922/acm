class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.date :birthday
      t.integer :height
      t.integer :weight
      t.string :gender
      t.text :condition
      t.string :picture
      t.references :category, null: false, foreign_key: true
      t.references :animal_care_group, null: false, foreign_key: true

      t.timestamps
    end

  end
end
