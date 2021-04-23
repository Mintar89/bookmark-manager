feature 'Add new bookmarks' do
    scenario 'A user can add bookmarks' do
      visit('/bookmarks/new')
      fill_in('url', with: "http://samharris.org")
      fill_in('title', with: "Sam Harris")
      click_button('Submit')

      expect(page).to have_link('Sam Harris', href: "http://samharris.org")
    end
end
