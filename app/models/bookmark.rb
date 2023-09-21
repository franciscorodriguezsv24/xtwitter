class Bookmark < ApplicationRecord
  belongs_to :author
  has_many :tweets

  #Esta es una pruebas 
end
