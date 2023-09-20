class Taggin < ApplicationRecord
  belongs_to :tweet
  belongs_to :hashtag
end
