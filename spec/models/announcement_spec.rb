require 'rails_helper'

RSpec.describe Announcement, type: :model do
  it 'validates presence of content' do
    announcement = build(:announcement, content: '')
    expect(announcement.valid?).to be false
    expect(announcement.errors[:content]).to include("can't be blank")
  end
end