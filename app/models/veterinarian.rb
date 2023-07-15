class Veterinarian < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :category, optional: true

  mount_uploader :avatar, ImageUploader
  mount_uploader :resume, ImageUploader
  mount_uploader :license, ImageUploader
  
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy 

 
  def matching_pages

  end
end
