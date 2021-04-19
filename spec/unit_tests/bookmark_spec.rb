require 'bookmark'

describe Bookmark do 
  it "It returns a series of bookmarks" do
   bookmarks = Bookmark.all 
   expect(bookmarks).to eq(['Bookmark', 'Bookmark', 'Bookmark'])
  end
end