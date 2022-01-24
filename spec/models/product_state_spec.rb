require 'rails_helper'

RSpec.describe ProductState, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:product) }
    it { is_expected.to belong_to(:state) }
  end
end
