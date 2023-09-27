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


# RSpec.describe YourModel do
#   describe '.with_replies_count' do
#     it 'returns the expected results' do
#       # Crea algunos objetos de prueba para tu modelo
#       user_id = 1  # Reemplaza esto con el ID de usuario adecuado
#       user = User.create(id: user_id)
#       tweet = Tweet.create(user_id: user_id)
#       tweet_reply = Tweetreply.create(user_id: user_id, tweet_id: tweet.id)

#       # Utiliza el scope para obtener los resultados
#       results = YourModel.with_replies_count(user_id)

#       # Verifica si los resultados son los esperados
#       expect(results).to include(tweet)  # Asegúrate de que el tweet esté presente en los resultados
#       expect(results).to_not include(user)  # Asegúrate de que el usuario no esté presente en los resultados
#       expect(results).to_not include(tweet_reply)  # Asegúrate de que la respuesta al tweet no esté presente en los resultados
#     end
#   end
# end
