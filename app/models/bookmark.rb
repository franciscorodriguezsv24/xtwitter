class Bookmark < ApplicationRecord
  belongs_to :tweet
  belongs_to :user
  validates_uniqueness_of :tweet_id, scope: :user_id 


  #scopes
  scope :bookmark_by_user, ->(user_id) { where(user_id: user_id) }

  scope :tweets_with_bookmark, ->(tweet_id) { where(tweet_id: tweet_id) }

end
