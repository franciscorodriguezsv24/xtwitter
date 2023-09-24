class Tweet < ApplicationRecord
  has_many :bookmarks 
  has_many :likes
  has_many :tweetreplies
  has_many :taggins
  belongs_to :user
  belongs_to :quoted_tweet, class_name: 'Tweet', foreign_key: 'quote_id', optional: true
  validates :body, length: { maximum: 255}

  #scopes  
  scope :tweets_by_user, ->(user_id) { where(user_id: user_id) }

  scope :with_retweet_count, -> { select("tweets.*, COUNT(*) AS retweet_count").where(retweet: true).group("tweets.id") }



end
