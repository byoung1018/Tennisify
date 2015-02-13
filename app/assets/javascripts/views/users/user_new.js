Tennisify.Views.NewUser = Backbone.ErrorView.extend({
  template: JST['users/form'],

  events: {
    "click .create-user": "createUser"
  },
  className: "user-form .col-md-6 .col-md-offset-3",
  tagName: "form",

  createUser: function (event) {
    event.preventDefault();
    var attrs = $(event.delegateTarget).serializeJSON()["user"];
    var user = new Tennisify.Models.User(attrs);
    user.save({}, {
      success: function (user) {
        currentUser = user.id;
        Backbone.history.navigate("#", {trigger: true});
        $('#modal').modal('toggle')
      },
      error: function (user, errors) {
        this.renderErrors(errors);
      }.bind(this)

    })
  },


  render: function () {
    var content = this.template({
      user: this.model,
      title: "Sign Up",
      submit: "Create Account"
    });
    this.$el.html(content);

    return this;
  },

});
