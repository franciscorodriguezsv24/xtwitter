class Tweet < ApplicationRecord
<<<<<<< HEAD
  has_many :bookmarks 
  has_many :likes
  has_many :tweetreplies
  has_many :taggins
  has_many :hastags, through: :taggins
  belongs_to :user
  belongs_to :quoted_tweet, class_name: 'Tweet', foreign_key: 'quote_id', optional: true
  validates :body, length: { maximum: 255}

  #scopes  
  scope :tweets_by_user, ->(user_id) { where(user_id: user_id) }

  scope :with_retweet_count, -> { select("tweets.*, COUNT(*) AS retweet_count").where(retweet: true).group("tweets.id") }


#method retweet 

def self.retweet(tweet, user)
  retweet = Tweet.new(
    content: "RT @#{tweet.user.username}: #{tweet.content}",
    user: user
  )

  if retweet.save

    return retweet
  else
    return nil 
  end
end

#method quote

def self.create_quote_tweet(user_id, body, tweet_id)

  quote_tweet = Tweet.new(
    user_id: user_id
    body: body
    quote_id: tweet_id
  )

  if quote_tweet.save

  return quote_tweet

  else nil 

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
=======
  belongs_to :author
  belongs_to :bookmark
  belongs_to :like
  has_many :hastags
  has_many :tweet_replies
  has_many :likes
  validates :body, length: {maximum: 255}, presence: true
  validates :retweet, confirmation: true 
  validates_associated :author 
  validates_associated :bookmark
  validates_associated :like


>>>>>>> master
end
