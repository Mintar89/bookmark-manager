require 'pg'

class Bookmark

  attr_reader :all
  attr_reader :id, :title, :url
  
  def initialize(id:, title:, url:)
    @id  = id
    @title = title
    @url = url
  end
  
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    bookmarks = connection.exec('SELECT * FROM bookmarks;')
    bookmarks.map do |bookmark|
      Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
    end
  end
  
  def self.create(url:, title:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    bookmarks = connection.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}') RETURNING id, title, url")
    Bookmark.new(id: bookmarks[0]['id'], title: bookmarks[0]['title'], url: bookmarks[0]['url'])
  end
  
end