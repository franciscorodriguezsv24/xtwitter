class Tweet < ApplicationRecord
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


end
