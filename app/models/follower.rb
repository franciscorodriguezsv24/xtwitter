class Follower < ApplicationRecord
    has_and_belongs_to_many :authors
    validates_associated :authors

    # Add uniqueness validation for follower_id and follwee_id, a user can only follows another user once

    # In additional to the validations requested above, you should add association validations to all your model
end
