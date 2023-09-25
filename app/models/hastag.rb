class Hastag < ApplicationRecord
    has_and_belongs_to :tweets

    validates name: presence: true 

    # Add presence validation for a hashtag name
end
