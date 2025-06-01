require 'rails_helper'

RSpec.describe Assignment, type: :model do
  it 'belongs to a course' do
    term = create(:term)
    course = create(:course, term: term)
    assignment = create(:assignment, course: course)

    expect(assignment.course).to eq(course)
  end

  it 'validates presence of title' do
    assignment = build(:assignment, title: '')
    expect(assignment.valid?).to be false
    expect(assignment.errors[:title]).to include("can't be blank")
  end
end