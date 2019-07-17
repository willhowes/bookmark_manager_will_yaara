require 'pg'

def persisted_data(id:)
  p id
  connection = PG.connect(dbname: 'bookmark_manager_test')
  result = connection.query("SELECT * FROM bookmarks WHERE id = '#{id}';")
  result
end
