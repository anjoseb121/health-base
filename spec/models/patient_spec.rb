require 'rails_helper'

RSpec.describe Patient, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:state) }
    it { is_expected.to have_many(:patient_products) }
    it { is_expected.to have_many(:products) }
  end
end
