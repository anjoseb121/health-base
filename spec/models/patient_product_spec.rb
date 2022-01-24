require 'rails_helper'

RSpec.describe PatientProduct, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:product) }
    it { is_expected.to belong_to(:patient) }
  end
end
