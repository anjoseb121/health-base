FactoryBot.define do
  factory :patient do
    name { Faker::Name.name }
    last_name { Faker::Name.last_name }
    dob { Faker::Date.birthday(min_age: 18, max_age: 65) }
    association :state
  end
end
