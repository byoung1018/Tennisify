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
  },


  showCreate: function () {
    event.preventDefault();
    var user = new Tennisify.Models.User();
    var view = new Tennisify.Views.NewUser({model: user});
    Tennisify.modalContent.html(view.render().$el);

  },

  login: function (event) {
    event.preventDefault();
    var loginDetails =
      $(event.delegateTarget).serializeJSON();
    new Tennisify.Models.Session({})
      $.ajax({
        url: "/session",
        type: "POST",
        data: loginDetails,
        success: function (user) {
          currentUser = new Tennisify.Models.User(user);
          Backbone.history.navigate("#", {trigger:true})
        }.bind(this),
        error: function (errors) {
          this.renderErrors(errors);
        }.bind(this),
        dataType: 'json'
      })
  }
});
