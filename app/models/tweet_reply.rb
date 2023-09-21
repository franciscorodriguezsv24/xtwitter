class TweetReply < ApplicationRecord
  belongs_to :tweet
  validates_associated :tweet
  validates :comment, presence:true 

end
