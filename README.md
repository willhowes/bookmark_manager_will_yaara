# bookmark_manager

###User Story 1
As a user,
So that I can see my bookmarks,
I'd like to see a list of previously added bookmarks.

###Domain Model for User Story 1

CLIENT--->(GET request through browser)-->CONTROLLER
CONTROLLER------(.show_list)--->BOOKMARK_LIST_CLASS(model)
BOOKMARK_LIST_CLASS----(returns all bookmarks)---->CONTROLLER
CONTROLLER----(bookmarks list)----->bookmarks.erb(view)
bookmarks.erb(view)---(html)----->CONTROLLER
CONTROLLER------>CLIENT
