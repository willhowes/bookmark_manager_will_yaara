feature 'View index page' do
  scenario 'Index page has content' do
    visit('/')
    expect(page).to have_content('Welcome to Your Bookmark Manager')
  end
end

# As a user,
# So that I can see my bookmarks,
# I'd like to see a list of previously added bookmarks.
