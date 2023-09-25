class Like < ApplicationRecord
<<<<<<< HEAD
  belongs_to :tweet
  belongs_to :user
  validates_uniqueness_of :tweet_id, scope: :user_id 

  #method 
  def like(user_id)
    likes.create(user_id: user_id) unless liked_by?(user_id)
  end

  def unlike(user_id)
    like = likes.find_by(user_id: user_id)
    like.destroy if like 
  end
=======
  belongs_to :author
  validates_associated :author
  # Add uniqueness validation for tweet_id and user_id, a user can only like a tweet once
>>>>>>> master
end
