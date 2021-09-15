FactoryBot.define do
  factory :user do
    skip_create

    name { Faker::Name.first_name }
    age { Faker::Number.number(digits: 2) }

    initialize_with { new('foo') }
  end
end
