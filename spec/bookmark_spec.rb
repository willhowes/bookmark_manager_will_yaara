
require 'bookmark'

describe Bookmark do

  # subject(:bookmark) { described_class.new }

  describe '#.all' do
    it 'returns all saved bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')


      # Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('www.twitter.com');")



      bookmarks = Bookmark.all

      expect(bookmarks).to include("www.google.com")
      expect(bookmarks).to include("www.makersacademy.com")
      expect(bookmarks).to include("www.twitter.com")

    end
  end

  describe '#.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://testbookmark.com')
      expect(Bookmark.all).to include 'http://testbookmark.com'
    end
  end
end
