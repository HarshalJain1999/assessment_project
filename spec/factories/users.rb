FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password123' }
    role { 0 }
  end
end