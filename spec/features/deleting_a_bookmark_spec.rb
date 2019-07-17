feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
    Bookmark.create(url: 'www.makersacademy.com', title: 'Makers Academy')
    visit('/')
    expect(page).to have_link('Makers Academy', href: 'www.makersacademy.com')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/'
    expect(page).not_to have_link('Makers Academy', href: 'www.makersacademy.com')
  end
end
