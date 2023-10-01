require 'rails_helper'

RSpec.describe Bookmark, type: :model do
   describe 'association' do 
      it {should belong_to(:tweet)}
      it {should belong_to(:user)}
   end

   it "validations" do
      subject {FactoryBot.build(:bookmark) } 
      should validate_uniqueness_of(:tweet_id).scoped_to(:user_id).ignoring_case_sensitivity
   end

   describe 'testing scopes' do 
      let(:user) {create(:user)}
      let(:tweet) {create(:tweet, user: user)}

      before do 
         create_list(:tweet, 2, user: user)

      end 

      describe 'bookmark_by_user' do 
         it 'returns bookmarks per user' do 
            bookmarks = Bookmark.bookmark_by_user(user.id)
            expect(bookmarks.count).to eq(2)
            expect(bookmarks.where(user_id: user.id).count).to eq 
         end
      end
   end
end
