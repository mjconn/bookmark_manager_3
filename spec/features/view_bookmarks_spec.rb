require 'pg'

feature 'Viewing bookmarks' do
    scenario 'user can view bookmarks' do
      conn = PG.connect(dbname: 'bookmark_manager_test')

      Bookmark.create(title: "Makers", url: 'http://www.makersacademy.com')
      Bookmark.create(title: "Destroy All Software", url: 'http://www.destroyallsoftware.com')
      Bookmark.create(title: "Amazon", url: 'http://www.amazon.com')

      visit('/bookmarks')

      expect(page).to have_link("Amazon", href: "http://www.amazon.com")
      expect(page).to have_link("Destroy All Software", href: "http://www.destroyallsoftware.com")
      expect(page).to have_link("Makers", href: "http://www.makersacademy.com")
    end
end
