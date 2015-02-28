Tennisify.Views.NavBar = Backbone.View.extend({
  initialize: function () {
    var navbar = $(".navbar");
    this.$el.html(navbar.html())
    navbar.html(this.$el)
  },
  events: {
    "click .create-meeting": "newMeeting",
    "click .show-profile": "showUser",
    "click .login-button": "login",
  },

  newMeeting: function (event) {
    Backbone.history.navigate("meetings/new", {"trigger": true});

  },

  login: function () {
    Backbone.history.navigate("login", {"trigger": true});
  },

  showUser: function () {
    Backbone.history.navigate("users/" + currentUser, {"trigger": true});
  },

  showModal: function (view) {
    Tennisify.currentModalView && Tennisify.currentModalView.remove();
    Tennisify.currentModalView = view;
    Tennisify.modalContent.html(view.render().$el);
    $('#modal').modal('toggle')
  },


});
