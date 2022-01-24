require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:category) }
    it { is_expected.to have_many(:product_states) }
    it { is_expected.to have_many(:states) }
    it { is_expected.to have_many(:patient_products) }
    it { is_expected.to have_many(:patients) }
  end
end
