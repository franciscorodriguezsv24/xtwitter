class Like < ApplicationRecord

  belongs_to :tweet
  belongs_to :user
  validates_uniqueness_of :tweet_id, scope: :user_id 

  

  #method 
  def self.liked(tweet_id, user_id)
    Like.create(tweet_id: tweet_id, user_id: user_id)
  end

  def unlike(tweet_id, user_id)
    like = likes.find_by(user_id: user_id)
    like.destroy if like 
  end

end
