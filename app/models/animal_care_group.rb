class AnimalCareGroup < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :category, optional: true

  mount_uploader :avatar, ImageUploader
  
 
  def matching_pages

  end
end

