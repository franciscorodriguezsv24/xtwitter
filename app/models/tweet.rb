class Tweet < ApplicationRecord
  has_many :bookmarks 
  has_many :likes
  has_many :tweetreplies
  has_many :taggins
  has_many :hastags, through: :taggins
  belongs_to :user
  belongs_to :quoted_tweet, class_name: 'Tweet', foreign_key: 'quote_id', optional: true
  validates :body, length: { in: 5..255}

  #scopes  
  scope :tweets_by_user, ->(user_id) {where(user_id: user_id)}

  scope :with_replies_count, ->(user_id) {includes(:tweetreplies).where(tweetreplies: {user_id: user_id})}

  #scopes quote

  scope :quotes_count_by_user, ->(user_id) {
  where(user_id: user_id, is_quote: true)
    .select("COUNT(*) AS quotes_count")
    .group("user_id")
}

#method retweet 

def self.retweet(tweet_id, user_id)
  retweet = Tweet.new(
    
    retweet: true
  )

  if retweet.save

    return retweet
  else
    return nil 
  end
end

#method quote

def self.create_quote_tweet(user_id, text, tweet_id)

  quote_tweet = Tweet.new(
    body: text, 
    user_id: user_id,
    quote_id: tweet_id
  )
  if quote_tweet.save
  return quote_tweet
  else nil 
  end
end 

    #method hastags
    def create_of_find_hasgtags(text)
      hashtags = text.scan(/#\w+/)

      hashtags.each do |tag| 
        hashtag_name = tag[1..-1]
        hashtag = hashtag.find_or_create_by(name: hashtag_name)

        unless hastags.include?(hastag)
          self.hastags << hashtag 
        end
      end
    end 

end

#retweetear
# class Tweet < ApplicationRecord
#   # ...

#   def retweet(user_id)
#     if !self.is_retweet
#       retweet = self.dup  # Creamos una copia del tweet
#       retweet.user_id = user_id  # Establecemos el nuevo usuario que realiza el retweet
#       retweet.is_retweet = true  # Indicamos que es un retweet
#       retweet.save  # Guardamos el retweet en la base de datos

#       return retweet
#     else
#       return nil  # No se puede retwittear un retweet
#     end
#   end
# end