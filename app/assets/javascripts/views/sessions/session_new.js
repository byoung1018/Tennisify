Tennisify.Views.SessionNew = Backbone.ErrorView.extend({
  template: JST['sessions/new'],

  render: function () {
    var content = this.template();
    this.$el.html(content);

    return this;
  },

  className: "container",

  events: {
    "click input[type='submit']": "login",
    "click .create-account-link": "showCreate",
    "click button.guest-login": "guestLogin",
  },

  guestLogin: function (event) {
    event.preventDefault();
    var guestId = Math.floor(Math.random() * 195) + 1;
    var guestUser = new Tennisify.Models.User({"id": guestId});
    guestUser.fetch({success: function (user) {
      this.$("input[name='user[login]']").val(user.get("username"));
      this.$("input[name='user[password]']").val("asdfasdf");
    }});
  },

  showCreate: function () {

    // event.preventDefault();
    // var user = new Tennisify.Models.User();
    // var view = new Tennisify.Views.NewUser({model: user});
    // Tennisify.modalContent.html(view.render().$el);
  },

  login: function (event) {
    event.preventDefault();
    var loginDetails = $("form").serializeJSON();
    $.ajax({
      url: "/session",
      type: "POST",
      data: loginDetails,
      success: function (user) {
        currentUser = user.id;
        $(".create-meeting").removeClass("disabled");
        $(".show-profile").removeClass("disabled");
        $("#main").show();
        routeBack();
      }.bind(this),
      error: function (errors) {
        this.renderErrors(errors);
      }.bind(this),
      dataType: 'json'
    })
  },



});
