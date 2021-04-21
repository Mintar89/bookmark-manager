require 'bookmark'

describe Bookmark do 
  it "It returns a series of bookmarks" do
   bookmarks = Bookmark.all 
   expect(bookmarks).to include 'http://www.makersacademy.com'
   expect(bookmarks).to include 'http://www.google.com'
   expect(bookmarks).to include 'http://www.destroyallsoftware.com'
  end
end