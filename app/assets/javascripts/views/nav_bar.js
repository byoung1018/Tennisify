Tennisify.Views.NavBar = Backbone.View.extend({
  initialize: function () {
    var navbar = $(".navbar");
    this.$el.html(navbar.html())
    navbar.html(this.$el)
  },
  events: {
    "click .create-meeting": "newMeeting",
  },

  newMeeting: function (event) {
    event.preventDefault();
    var meeting = new Tennisify.Views.newMeeting({});
    this.showModal(meeting);
    $('#modal').modal('toggle')
  },

  showModal: function (view) {
    this._modalView && this._modalView.remove();
    this._modalView = view;
    $("#modal-view").html(view.render().$el);
  },
});
