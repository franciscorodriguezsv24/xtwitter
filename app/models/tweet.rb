class Tweet < ApplicationRecord
  belongs_to :author
  belongs_to :bookmark
  belongs_to :like
  has_and_belongs_to_many :hastags
  has_many :tweet_replies
  has_many :likes
  validates :body, length: {maximum: 255}, presence: true
  validates :retweet, confirmation: true 
end
