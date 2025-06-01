FactoryBot.define do
  factory :term do
    name { "Term #{Faker::Number.unique.number(digits: 4)}" }
  end
end