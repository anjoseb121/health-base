# frozen_string_literal: true

class ProductState < ApplicationRecord
  belongs_to :product
  belongs_to :state
end
