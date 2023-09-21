class Author < ApplicationRecord
    has_many :tweets
    has_many :bookmarks
    has_many :likes
    has_and_belongs_to_many :followers

    validates :username, :email, uniqueness: true, presence: true 
    validates :name, presence: true 
    validates :lastname, presence: true 
    validates :password, presence: true, length:{ maximum: 12}, format: {with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@\/\*\-\+\_])[A-Za-z\d!@\/\*\-\+\_]{8,}\z/} 

    
    # Add presence validation for email and username 
    # Add Uniqueness validation for email and username
    # Add presence validation for password
    # Add Length validation of 12 characters minimum
    # Add Format validation At least 1 uppercase letter, at least 1 lowercase letter, at least 1 number and at least 1 special character like !@/*-+_
    # if password field didn't exist before in your model add it with a new migration and apply the corresponding validations
    
end
