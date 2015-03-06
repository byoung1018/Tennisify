Tennisify.Views.EditUser = Backbone.ErrorView.extend({
  template: JST['users/form'],
  events: {
    "click .create-user": "editUser"
  },

  render: function () {
    var content = this.template({
      user: this.model,
      title: "Edit",
      submit: 'Edit Account'});
    this.$el.html(content);
    return this;
  },

  editUser: function (event) {
    event.preventDefault();
    var attrs = $(event.delegateTarget).serializeJSON()["user"];
    this.model.set(attrs);
    this.model.save({}, {
      success: function (user) {
        $('#modal').modal('toggle')
      },
      error: function (user, errors) {
        this.renderErrors(errors);
      }.bind(this)

    })
  },

});
