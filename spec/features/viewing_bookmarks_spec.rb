feature 'Viewing bookmarks' do
  scenario 'Loading the index page' do 
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    Bookmark.create(title: "Makers Academy", url: "http://www.makersacademy.com")
    Bookmark.create(title: "Destroy All Software", url: "http://www.destroyallsoftware.com")
    Bookmark.create(title: "Google", url: "http://www.google.com")
    
    visit('/bookmarks')
    
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software',  href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
    
  end

end