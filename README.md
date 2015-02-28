# Tennisify
![Tennis](http://www.publicindoortennis.com/pages/nhgmfymca/image/tennis%20balls.jpg)

Have you ever wanted to go out and play a game with other people but just give up because it's too painful to set it up?  I have this annoyance every I want to play tennis which ends up being even more complicated.  If I want to play singles, I can't email multiple people because people might respond so I'm reduced to emailing people one at a time, waiting for somebody to say they can play just to hope I don't have to email somebody else.  If I can't find anybody, then what do I do?  Tennisify solves these problems and more by allowing you to post meets that people can see and respond to.  You can find a live copy of it [here][demo_link].
[demo_link]: http://www.tennisify.net

## The Technical
###Views
All of the views are in Backbone.  The css for the modals is implemented with bootstrap and the content is entered with different Backbone views swap their content into a hidden modal div that is then unhidden to show the modal, then hidden again to close the modal.  I extended the basic Backbone view to create an Errorview that has built in methods to display errors on forms such as bad passwords for logging in, or bad data when creating a meet or user.

###The Index
The index show all meets that meet the filter.  It is always visible and maintains the sides of the items in it whether it takes up the whole screen or just a side bar.  The filter listens for changes on any of the inputs and on each change fetches a new collection of meetings.  The filter is sent when fetching the collection and a sql query formated in rails to get all of the meetings, then those meetings are sent back.  

###Meets
Meet attributes that allow multiple values to exist such as age groups or levels allowed have a table for each of the values and a join table for each one associated with a meeting.  They are accessed through Active Record associations and sent in the JSON of the meeting they are associated with.  When a meeting is created there is a method in rails that will create a join entry for each selected value based on the attribute and value.  Meet acceptances/declines are in their own table and are displayed on the right side with Backbone displaying a view with buttons if the current user has not responded or a view with the user's response.

## Todo
* Allow invitations to specific users for a meeting
  * add a table, corrisponding model and controller for it
  * add a view in the meeting invite
  * update the meeting create/edit with a link to the new view and the invited users
  * show the invited users on the meeting
  * add email notifications
* Disallow acceptances to people who do not meet meet restrictions
* Allow friending of other users
* Add sms notifications
* Add sms acceptances
