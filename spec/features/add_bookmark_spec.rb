require 'pg'

feature 'Adding bookmarks' do
  scenario 'allow user to add bookmark' do
    Bookmark.create(title: "BBC", url: 'http://www.bbc.co.uk')
    visit('/bookmarks')
    expect(page).to have_link("BBC", href: "http://www.bbc.co.uk")
  end
end
