require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'associations' do 
    it {should have_many(:followers).with_foreign_key('follower_id')}
    it {should have_many(:followees).with_foreign_key('followee_id')}
    it {should have_many(:tweets)}
    it {should have_many(:likes)}
    it {should have_many(:bookmarks)}
  end

  describe 'validations' do 
  
end
