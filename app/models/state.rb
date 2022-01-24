class State < ApplicationRecord
  has_many :product_states
  has_many :products, through: :product_states
  has_many :patients
end
