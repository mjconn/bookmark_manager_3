require 'pg'

feature 'Adding bookmarks' do
  scenario 'allow user to add bookmark' do
    visit('/bookmarks/add')
    fill_in('title', with: 'BBC')
    fill_in('url', with: 'http://www.bbc.co.uk')
    click_button('Submit')
    expect(page).to have_link("BBC", href: "http://www.bbc.co.uk")
  end
end
