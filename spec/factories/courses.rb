FactoryBot.define do
  factory :course do
    title { Faker::Educator.course_name }
    code { "C#{Faker::Number.number(digits: 3)}" }
    term_id {1}

    before(:create) do |course|
      course.code ||= "IT-#{rand(100..999)}-OLA#{rand(1..9)}"
    end
  end
end