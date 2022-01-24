require 'rails_helper'

RSpec.describe State, type: :model do
  context 'associations' do
    it { is_expected.to have_many(:product_states) }
    it { is_expected.to have_many(:products) }
    it { is_expected.to have_many(:patients) }
  end
end
