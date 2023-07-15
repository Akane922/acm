class Comment < ApplicationRecord
  belongs_to :veterinarian
  belongs_to :post 
end
