class User < ApplicationRecord
    has_many :follower, class_name: 'follower', foreign_key:'follower_id'
    has_many :followee, class_name: 'follower', foreign_key:'followee_id'
    has_many :tweets
    has_many :likes
    has_many :bookmarks
    validates_associated :tweets
    validates_associated :likes
    validates_associated :bookmarks
    validates_associated :followee, class_name: 'follower', foreign_key:'followee_id'
    validates_associated :follower, class_name: 'follower', foreign_key:'follower_id'


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
