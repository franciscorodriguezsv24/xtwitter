require 'rails_helper'

RSpec.describe Tweet, type: :model do
  
  describe 'associations' do 
  it {should belong_to(:user)}
  it { should belong_to(:quoted_tweet).class_name('Tweet').with_foreign_key('quote_id').optional(true) }
  it {should have_many(:bookmarks)}
  it {should have_many(:likes)}
  it {should have_many(:tweetreplies)}
  it {should have_many(:taggins)}
  it {should have_many(:hastags)}
  end 

end 
