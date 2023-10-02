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

  #scopes
  describe 'testing scopes' do
    let(:user) {create(:user)}
    let(:another_user) {create(:user)}
    let(:tweet) {create(:tweet, user: user)}

    before do 
    create_list(:tweet, 2, user: user)
  
    # create_list(:quote, 3, original_quote: tweet)

    #crear replies para el user 

    tweet_from_another_user = create(:tweet, user: another_user)
    create(:tweetreply, user: user, tweet: tweet_from_another_user)
    end

    describe '.user_tweets' do 
      it 'returns tweets created by the user' do 
        tweets = Tweet.tweets_by_user(user.id)
        expect(tweets.count).to eq(2)
        expect(tweets.first.user_id).to eq(user.id)
      end 
    end

    describe 'with_replies_count' do 
      it 'returns the replies that the user has sned' do
        tweetreplies = Tweet.with_replies_count(user.id)
        expect(tweetreplies.count).to eq(1)
        expect(tweetreplies.includes(:tweetreplies).where(tweetreplies: {user_id: user.id}).count).to eq(1)
      end
    end 
  end
end 

RSpec.describe "routes for tweets", type: :routing do
  # tests go here
 end
