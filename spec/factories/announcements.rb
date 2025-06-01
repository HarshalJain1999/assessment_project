FactoryBot.define do
  factory :announcement do
    content { Faker::Lorem.sentence }
  end
end