Tennisify.Views.SessionNew = Backbone.ErrorView.extend({
  template: JST['sessions/new'],

  render: function () {
    var content = this.template();
    this.$el.html(content);

    return this;
  },
  tagName: "form",
  events: {
    "click button.login": "login"
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
          console.log(currentUser); 
          Backbone.history.navigate("/", {trigger:true})
        }.bind(this),
        error: function (errors) {
          this.renderErrors(errors);
        }.bind(this),
        dataType: 'json'
      })
  }
});
