require 'bookmark'

describe Bookmark do 
  it "It returns a series of bookmarks" do
   connection = PG.connect(dbname: 'bookmark_manager_test')
   connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
   connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
   connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
   
   bookmarks = Bookmark.all 
   
   expect(bookmarks).to include 'http://www.makersacademy.com'
   expect(bookmarks).to include 'http://www.google.com'
   expect(bookmarks).to include 'http://www.destroyallsoftware.com'
  end
end

describe 'create' do
  it 'creates a new bookmark' do
    Bookmark.create(url: 'http://samharris.org')

    expect(Bookmark.all).to include 'http://samharris.org'
  end
end