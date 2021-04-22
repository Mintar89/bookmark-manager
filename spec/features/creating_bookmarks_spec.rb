feature 'Add new bookmarks' do
    scenario 'A user can add bookmarks' do
      visit('/bookmarks/new')
      fill_in('url', with: "http://samharris.org")
      click_button('Submit')
      expect(page).to have_content "http://samharris.org"
    end
end
