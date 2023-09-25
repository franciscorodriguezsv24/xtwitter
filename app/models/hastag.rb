class Hastag < ApplicationRecord
<<<<<<< HEAD
    has_many :taggins
    validates :name, presence: true
=======
    has_and_belongs_to_many :tweets
    validates_associated :tweets
    validates :name, presence:true 

    # Add presence validation for a hashtag name
>>>>>>> master
end
