
# bookmark_manager

###User Story 1
As a user,
So that I can see my bookmarks,
I'd like to see a list of previously added bookmarks.

###User Story 2
As a user,
So that I can refer back to my favourite websites
I'd like to add bookmarks to my bookmark manager.

###User Story 3
As a user
So I can remove my bookmark from Bookmark Manager
I want to delete a bookmark

###Domain Model for User Story 1

CLIENT--->(GET request through browser)-->CONTROLLER
CONTROLLER------(.show_list)--->BOOKMARK_LIST_CLASS(model)
BOOKMARK_LIST_CLASS----(returns all bookmarks)---->CONTROLLER
CONTROLLER----(bookmarks list)----->bookmarks.erb(view)
bookmarks.erb(view)---(html)----->CONTROLLER
CONTROLLER------>CLIENT


###Setting up the database

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql

CREATE TEST DATABASE


1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager_test;
3. Connect to the database using the pqsl command \c bookmark_manager_test;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
