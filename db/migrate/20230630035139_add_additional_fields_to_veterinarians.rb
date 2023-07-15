class AddAdditionalFieldsToVeterinarians < ActiveRecord::Migration[6.1]
  def change
    add_column :veterinarians, :resume, :string
    add_column :veterinarians, :license, :string
    add_column :veterinarians, :available_date1, :date
    add_column :veterinarians, :available_date2, :date
    add_column :veterinarians, :available_date3, :date
    add_column :veterinarians, :motto, :string
    add_column :veterinarians, :card_title, :string
  end
end


