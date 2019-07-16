
require 'bookmark'

describe Bookmark do

  # subject(:bookmark) { described_class.new }

  describe '#.all' do
    it 'returns all saved bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("www.google.com")
      expect(bookmarks).to include("www.makersacademy.com")
      expect(bookmarks).to include("www.twitter.com")
    end
  end
end
