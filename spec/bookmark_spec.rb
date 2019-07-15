
require 'bookmark'

describe Bookmark do

  subject(:bookmark) { described_class.new }

  describe '#.all' do
    it 'returns all saved bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("https://www.google.com/")
    end
  end
end
