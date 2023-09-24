class User < ApplicationRecord
    has_many :followers, foreign_key: 'follower_id'
    has_many :followees, foreign_key: 'followee_id', class_name: 'Follower'
    has_many :tweets
    has_many :likes
    has_many :bookmarks
    validates_associated :tweets
    validates_associated :likes
    validates_associated :bookmarks
    validates_associated :followers, message: 'Invalid follower association'
    validates_associated :followees, message: 'Invalid followee association'


# validations 
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :name, presence: true
    validates :lastname, presence: true 
    validates :email, presence: true
    validates :email, uniqueness: true 
    validates :password, format: { with: /\A.../ }
    validates :password, presence: true, length: { minimum: 12 }
end
