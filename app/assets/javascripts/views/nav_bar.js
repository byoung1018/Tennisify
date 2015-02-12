Tennisify.Views.NavBar = Backbone.View.extend({
  initialize: function () {
    var navbar = $(".navbar");
    this.$el.html(navbar.html())
    debugger
  },
  events: {
    "click .create-meeting": "newMeeting",
  },

  newMeeting: function (event) {
    debugger
    event.preventDefault();
    debugger
    var meeting = new Tennisify.Views.newMeeting({});
    this.showModal(meeting);
    debugger
    $('#modal').modal('toggle')
  },

});
