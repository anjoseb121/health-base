FactoryBot.define do
  factory :state do
    full_name { Faker::Address.state }
    abbreviation { Faker::Address.state_abbr }
    service_offered { true }
    minimum_age { 18 }

    trait :without_service do
      service_offered { false }
    end
  end
end
