# in spec/features/viewing_bookmarks_spec.rb
require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    Bookmark.create(url: "www.google.com")
    Bookmark.create(url: "www.makersacademy.com")
    Bookmark.create(url: "www.twitter.com")

    visit('/bookmarks')

    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.makersacademy.com"
    expect(page).to have_content "www.twitter.com"
  end
end
