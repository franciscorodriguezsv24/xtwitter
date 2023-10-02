require 'rails_helper'

RSpec.describe Bookmark, type: :model do
   describe 'association' do 
      it {should belong_to(:tweet)}
      it {should belong_to(:user)}
   end

   describe "validations" do
      let(:user1){create(:user)}
      let(:user2){create(:user)}
      let(:tweet){create(:tweet, user: user1)}

      before do 
         create_list(:bookmark, 3, user: user1,)
         create_list(:bookmark, 2, user: user2,)
      end

      describe 'bookmar_by_user scope' do
         it 'returns bookmarks for a specific user' do 
            bookmarks_for_user1 = Bookmark.bookmark_by_user(user1.id)
            expect(bookmarks_for_user1.count).to eq(3)
            expect(bookmarks_for_user1).to all(have_attributes(user_id: user1.id))

            bookmarks_for_user2 = Bookmark.bookmark_by_user(user2.id)
            expect(bookmarks_for_user2.count).to eq(2)
            expect(bookmarks_for_user2).to all(have_attributes(user_id: user2.id))
         end
      end
   end
end
