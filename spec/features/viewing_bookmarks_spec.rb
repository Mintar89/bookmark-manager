feature 'viewing bookmarks' do
  scenario 'loading the index page' do 
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
  scenario 'Loads bookmarks' do 
    visit('/bookmarks')
    expect(page).to have_content ["Bookmark", "Bookmark", "Bookmark"]
  end
end