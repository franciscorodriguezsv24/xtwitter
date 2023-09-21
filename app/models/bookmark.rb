class Bookmark < ApplicationRecord
  belongs_to :author
  has_many :tweets


end
