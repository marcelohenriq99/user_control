class Product < ApplicationRecord
  belongs_to :store

  #enum status: [:active, :inactive]
end
