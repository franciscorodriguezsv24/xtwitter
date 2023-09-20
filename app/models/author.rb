class Author < ApplicationRecord
    has_many :tweets
    has_many :bookmarks
    has_many :likes
end
