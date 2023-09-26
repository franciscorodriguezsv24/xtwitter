require 'rails_helper'

RSpec.describe Tweet, type: :model do

  #associations 
  describe 'associations' do 
  it {should belong_to(:user)}
  it { should belong_to(:quoted_tweet).class_name('Tweet').with_foreign_key('quote_id').optional(true) }
  it {should have_many(:bookmarks)}
  it {should have_many(:likes)}
  it {should have_many(:tweetreplies)}
  it {should have_many(:taggins)}
  it {should have_many(:hastags)}
  end 
#factory bot 
  it 'returns a tweeter' do 
    tweet = create(:tweet)
  end

#validations 
  describe 'validation' do
    it {should validate_length_of(:body).
      is_at_least(5).is_at_most(255)}

  end

end 
