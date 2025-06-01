FactoryBot.define do
  factory :assignment do
    title { Faker::Lorem.word }
    course
  end
end