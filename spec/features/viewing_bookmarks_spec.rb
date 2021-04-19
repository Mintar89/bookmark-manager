feature 'viewing bookmarks' do
  scenario 'loading the index page' do 
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end