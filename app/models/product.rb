class Product < ApplicationRecord
  belongs_to :category
  has_many :product_states
  has_many :states, through: :product_states
  has_many :patient_products
  has_many :patients, through: :patient_products
end
