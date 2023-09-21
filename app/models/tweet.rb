class Tweet < ApplicationRecord
  belongs_to :author
  belongs_to :bookmark
  belongs_to :like
end
