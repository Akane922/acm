class Veterinarian < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :category, optional: true

  mount_uploader :avatar, ImageUploader
  mount_uploader :resume, ImageUploader
  mount_uploader :license, ImageUploader
end
