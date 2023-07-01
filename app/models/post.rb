class Post < ApplicationRecord
  belongs_to :veterinarian
  validates :name, :category, :description, presence: true
end