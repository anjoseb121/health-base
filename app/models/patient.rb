# frozen_string_literal: true

class Patient < ApplicationRecord
  belongs_to :state
  has_many :patient_products
  has_many :products, through: :patient_products
end
