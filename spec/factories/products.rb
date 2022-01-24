FactoryBot.define do
  factory :product do
    name { Faker::Lorem.word }
    ndc { Faker::IDNumber.valid }
    qty { 10 }
    price { Faker::Number.decimal(l_digits: 2) }
    instructions { Faker::Lorem.sentence }
    association :category
  end
end
