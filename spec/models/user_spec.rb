require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'associations' do 
    it {should have_many(:followers).with_foreign_key('follower_id')}
    it {should have_many(:followees).with_foreign_key('followee_id')}
    it {should have_many(:tweets)}
    it {should have_many(:likes)}
    it {should have_many(:bookmarks)}
  end

  it 'returns a user' do 
    user = create(:user)
  end


  describe 'validations' do 
    it {should validate_presence_of(:username)}
    it {should validate_uniqueness_of(:username)}
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:lastname)}
    it {should validate_presence_of(:email)}
    it {should validate_uniqueness_of(:email)}
    it {should allow_value('valid_Password123').for(:password).with_message("Your password is correct")}
    it {should validate_length_of(:password).is_at_least(12)}
  end

end