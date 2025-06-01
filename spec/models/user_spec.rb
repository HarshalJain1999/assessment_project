require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has many favorites' do
    user = create(:user)
    term = create(:term)
    course1 = create(:course, term: term)
    fav = create(:favorite, user: user, course: course1)

    expect(user.favorites).to include(fav)
  end
end