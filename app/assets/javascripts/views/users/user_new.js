Tennisify.Views.newUser = Backbone.ErrorView.extend({
  template: JST['users/new'],

  events: {
    "click .create-user": "createUser"
  },
  className: "user-form",
  tagName: "form",

  createUser: function (event) {
    event.preventDefault();
    var attrs = $(event.delegateTarget).serializeJSON()["user"];
    var user = new Tennisify.Models.User(attrs);
    console.log(attrs);
    user.save({}, {
      success: function () {
      },
      error: function (user, errors) {
        this.renderErrors(errors);
      }.bind(this)

    })
  },


  render: function () {
    var content = this.template({
      user: new Tennisify.Views.newUser()});
    this.$el.html(content);

    return this;
  },

});
