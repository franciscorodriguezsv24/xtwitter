require 'rails_helper'

RSpec.describe Follower, type: :model do

  describe 'associations' do 
  it {should belong_to(:follower).class_name('User')}
  it {should belong_to(:followee).class_name('User')}
  end 

#   it "validations" do
#     subject {FactoryBot.build(:follower) } 
#     should validate_uniqueness_of(:follower_id).scoped_to(:followee_id).ignoring_case_sensitivity
#  end

describe 'follow_scopes' do 
  let (:follower) {create(:user)}
  let (:another_follower) {create(:user)}

  before do 
  create(:follower, follower: follower, followee: another_follower)
  end

  describe 'follower user' do 
    it 'returns a number of followers'do 
   followers = Follower.followers_user(follower.id)
   expect(followers.where(follower_id: follower.id)).to eq(followe.id)
    end
  end
  
end 


end 

