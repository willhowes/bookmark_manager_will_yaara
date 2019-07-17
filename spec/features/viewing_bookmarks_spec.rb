# in spec/features/viewing_bookmarks_spec.rb
require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    Bookmark.create(url: "www.google.com", title: "Google")
    Bookmark.create(url: "www.makersacademy.com", title: "Makers")
    Bookmark.create(url: "www.twitter.com", title: "Twitter")

    visit('/')

    expect(page).to have_link('Google', href: "www.google.com")
    expect(page).to have_link('Makers', href: "www.makersacademy.com")
    expect(page).to have_link('Twitter', href: "www.twitter.com")
  end
end
