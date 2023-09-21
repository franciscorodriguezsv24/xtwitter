class Tweet < ApplicationRecord
  belongs_to :author
  belongs_to :bookmark
  belongs_to :like
  has_and_belongs_to :hastags
  has_many :tweet_replies
  has_many :likes
end
