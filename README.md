# Bookmark Manager

The website will have the following specification:

- Show a list of bookmarks
- Add new bookmarks
- Delete bookmarks
- Update bookmarks
- Comment on bookmarks
- Tag bookmarks into categories
- Filter bookmarks by tag
- Users are restricted to manage only their own bookmarks

## User Stories:

As a website user,
So that I can access websites I use a lot,
I'd like to see a list of bookmarks.

As a website user,
So that I can update my bookmarks,
I want to be able to add bookmarks

## Domain Model:

![Bookmark Manager domain model](./usnahakimi/downloads/user_story_1.png)# bookmarks


## Database Setup Instructions:

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
