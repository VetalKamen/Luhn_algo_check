FactoryBot.define do
  factory :card do
    skip_create

    number { Faker::Number.number(digits: 16) }

    initialize_with { new('foo') }
  end
end
