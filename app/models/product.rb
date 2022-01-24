# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category
  has_many :product_states
  has_many :states, through: :product_states
  has_many :patient_products
  has_many :patients, through: :patient_products

  scope :by_state, ->(state) { joins(:product_states).where(product_states: { state_id: state.id }) }
  scope :by_state_and_age, lambda { |state, age|
    joins(:product_states).where(product_states: { state_id: state.id, minimum_age: age..Float::INFINITY })
  }
end
