Tennisify.Views.NavBar = Backbone.View.extend({
  initialize: function () {
    var navbar = $(".navbar");
    this.$el.html(navbar.html())
    navbar.html(this.$el)
  },
  events: {
    "click .create-meeting": "newMeeting",
    "click .show-profile": "showUser",

  },

  newMeeting: function (event) {
    event.preventDefault();
    var meeting = new Tennisify.Views.newMeeting({});
    this.showModal(meeting);
  },

  showUser: function () {
    event.preventDefault();
    var user = Tennisify.Collections.users.getOrFetch(currentUser, function () {
      var userView = new Tennisify.Views.showUser({model: user});
      this.showModal(userView);
    }.bind(this))
  },

  showModal: function (view) {
    Tennisify.currentModalView && Tennisify.currentModalView.remove();
    Tennisify.currentModalView = view;
    Tennisify.modalContent.html(view.render().$el);
    $('#modal').modal('toggle')
  },


});
