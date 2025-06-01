require 'rails_helper'

RSpec.describe Term, type: :model do
  it 'has many courses' do
    term = create(:term)
    course = create(:course, term: term)

    expect(term.courses).to include(course)
  end

  it 'validates presence and uniqueness of name' do
    term = build(:term, name: '')
    expect(term.valid?).to be false
    expect(term.errors[:name]).to include("can't be blank")
  end
end