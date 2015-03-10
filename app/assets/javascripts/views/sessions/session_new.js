Tennisify.Views.SessionNew = Backbone.ErrorView.extend({
  template: JST['sessions/new'],

  render: function () {
    var content = this.template();
    this.$el.html(content);

    return this;
  },
  tagName: "form",
  events: {
    "click button.login": "login",
    "click .create-account-link": "showCreate",
    "click .guest-login": "guestLogin",
  },

  guestLogin: function () {
    var guestId = Math.floor(Math.random() * 12) + 1;
    var guestUser = new Tennisify.Models.User({"id": guestId});
    guestUser.fetch({success: function (user) {
      this.$(".session-login").val(user.get("username"));
      this.$(".session-password").val("asdfasdf");
    }})
  },


  showCreate: function () {
    event.preventDefault();
    var user = new Tennisify.Models.User();
    var view = new Tennisify.Views.NewUser({model: user});
    Tennisify.modalContent.html(view.render().$el);
  },

  login: function (event) {
    event.preventDefault();
    var loginDetails = $(event.delegateTarget).serializeJSON();
    $.ajax({
      url: "/session",
      type: "POST",
      data: loginDetails,
      success: function (user) {
        currentUser = user.id;
        $('#modal').modal('toggle')
        $(".create-meeting").removeClass("disabled");
        $(".show-profile").removeClass("disabled");
        $(".backdrop").show();
        routeBack();
      }.bind(this),
      error: function (errors) {
        this.renderErrors(errors);
      }.bind(this),
      dataType: 'json'
    })
  },



});
