class Tweetreply < ApplicationRecord
  belongs_to :tweet
  belongs_to :user
  validates :body, presence: true 
  validates :body, length: { maximum: 2000}
end
