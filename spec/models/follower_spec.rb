require 'rails_helper'

RSpec.describe Follower, type: :model do

  describe 'associations' do 
  it {should belong_to(:follower).class_name('User')}
  it {should belong_to(:followee).class_name('User')}
  end 

  it 'follower' do 
    follower = create(:follower)
  end 
  
  describe 'validation' do 
      it { should validate_uniqueness_of(:follower).scoped_to(:followee) }
  end 
end 

