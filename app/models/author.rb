class Author < ApplicationRecord
    has_many :tweets
    has_many :bookmarks
    has_many :likes
    has_and_belongs_to :followers
    
end
