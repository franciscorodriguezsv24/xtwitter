class Follower < ApplicationRecord
<<<<<<< HEAD
    belongs_to :follower, class_name: 'User'
    belongs_to :followee, class_name: 'User'
    validates_uniqueness_of :follower, scope: :followee

    #scopes
    scope :followers_user, ->(follower_id) { where(follower_id: follower_id) }

    scope :followee_user, ->(followee_id){ where(followee_id: followee_id)}
end

=======
    has_and_belongs_to_many :authors
    validates_associated :authors

    # Add uniqueness validation for follower_id and follwee_id, a user can only follows another user once

    # In additional to the validations requested above, you should add association validations to all your model
end
>>>>>>> master
