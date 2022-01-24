require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:category) }
    it { is_expected.to have_many(:product_states) }
    it { is_expected.to have_many(:states) }
    it { is_expected.to have_many(:patient_products) }
    it { is_expected.to have_many(:patients) }
  end
  context 'scopes' do
    context '.by_state' do
      let!(:products) { create_list(:product, 3) }
      let!(:product) { create(:product) }
      let!(:product_state) { create(:product_state, product: product) }
      let!(:other_state) { create(:product_state, product: products[1]) }
      let!(:another_state) { create(:product_state, product: products.first) }

      it 'returns products that are offered in the given state' do
        expect(described_class.by_state(product.states.first)).to eq [product]
      end
    end
    context '.by_age' do
      context 'a product cannot be offered to patients of certain age by state' do
        let!(:state) { create(:state) }
        let!(:products) { create_list(:product, 3) }
        let!(:product_ok) { create(:product_state, product: products[0], state: state, minimum_age: 21) }
        let!(:other_age) { create(:product_state, product: products[1], state: state, minimum_age: 18) }
        let!(:another_age) { create(:product_state, product: products[2], state: state, minimum_age: 18) }

        it 'returns the right product' do
          expect(described_class.by_state_and_age(state, 21)).to eq [products.first]
        end
      end
       context 'a product cannot be offered to patients of certain age by state' do
        let!(:state) { create(:state) }
        let!(:products) { create_list(:product, 3) }
        let!(:product_ok) { create(:product_state, product: products[0], state: state, minimum_age: 21) }
        let!(:other_age) { create(:product_state, product: products[1], state: state, minimum_age: 18) }
        let!(:another_age) { create(:product_state, product: products[2], state: state, minimum_age: 18) }

        it 'returns the right product' do
          expect(described_class.by_state_and_age(state, 18)).to eq products
        end
      end
    end
  end
end
