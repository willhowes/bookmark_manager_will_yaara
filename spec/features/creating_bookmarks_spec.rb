# As a user,
# So that I can refer back to my favourite websites
# I'd like to add bookmarks to my bookmark manager.

feature 'Adding a new bookmark' do
  scenario 'the user can add a bookmark to the Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'www.bbc.co.uk')
    fill_in('title', with: 'BBC')
    click_button 'Submit'
    expect(page).to have_link('BBC', href: 'www.bbc.co.uk') 
  end
end
