FactoryBot.define do
  factory :product_state do
    association :product
    association :state
    minimum_age { 18 }
  end
end
