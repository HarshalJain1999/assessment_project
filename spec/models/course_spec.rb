require 'rails_helper'

RSpec.describe Course, type: :model do
  it 'belongs to a term' do
    term = create(:term)
    course = create(:course, term: term)
    expect(course.term).to eq(term)
  end

  it 'validates presence of title, code, and term_id' do
    course = build(:course, title: nil, code: nil, term: nil)
    expect(course.valid?).to be false
    expect(course.errors[:title]).to include("can't be blank")
    expect(course.errors[:term_id]).to include("can't be blank")
  end

  it 'generates a course code before creation' do
    term = create(:term)
    course = create(:course, code: nil, term: term)
    course.save
    expect(course.code).to match(/^IT-\d{3}-OLA\d$/)
  end
end