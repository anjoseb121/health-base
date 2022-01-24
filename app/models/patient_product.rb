# frozen_string_literal: true

class PatientProduct < ApplicationRecord
  belongs_to :patient
  belongs_to :product
end
