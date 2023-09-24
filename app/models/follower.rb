class Follower < ApplicationRecord
    belongs_to :follower, class_name: 'User'
    belongs_to :followee, class_name: 'User'
    validates_uniqueness_of :follower, scope: :followee

    #scopes
    scope :followers_user, ->(follower_id) { where(follower_id: follower_id) }

    scope :followee_user, ->(followee_id){ where(followee_id: followee_id)}
end

