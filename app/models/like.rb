class Like < ApplicationRecord
  belongs_to :author
  validates_associated :author
  # Add uniqueness validation for tweet_id and user_id, a user can only like a tweet once
end
