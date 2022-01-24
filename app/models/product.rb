class Product < ApplicationRecord
  belongs_to :category
  has_many :product_states
  has_many :states, through: :product_states
end
