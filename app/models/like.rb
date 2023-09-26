class Like < ApplicationRecord

  belongs_to :tweet
  belongs_to :user
  validates_uniqueness_of :tweet_id, scope: :user_id 

  #method 
  def liked(user_id)
    likes.create(user_id: user_id) unless liked_by?(user_id)
  end

  def unlike(user_id)
    like = likes.find_by(user_id: user_id)
    like.destroy if like 
  end

end
