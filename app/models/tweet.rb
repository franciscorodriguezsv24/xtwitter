class Tweet < ApplicationRecord
  has_many :bookmarks 
  has_many :likes
  has_many :Tweetreplies
  has_many :taggins
  belongs_to :user
  belongs_to :tweets, class_name: 'Tweet', foreign_key: 'quote_id'

  validates :body, length: { maximum: 255}
  



end
