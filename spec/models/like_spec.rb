require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'association' do
    it{should belong_to(:tweet)}
    it{should belong_to(:user)} 

end 

it 'return a like' do 
  like = create(:like)
end 

describe 'validation'do 
it { should validate_uniqueness_of(:tweet_id).scoped_to(:user_id) }
end 

end
