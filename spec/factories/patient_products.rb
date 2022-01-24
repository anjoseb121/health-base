FactoryBot.define do
  factory :patient_product do
    association :patient
    association :product
  end
end
