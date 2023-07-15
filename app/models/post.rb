class Post < ApplicationRecord
  belongs_to :veterinarian
  validates :name, :category, :description, presence: true
  
  belongs_to :veterinarian
  has_many :comments, dependent: :destroy  
end