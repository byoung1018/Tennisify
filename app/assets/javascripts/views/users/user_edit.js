Tennisify.Views.EditUser = Backbone.View.extend({
  template: JST['users/form'],


  render: function () {
    var content = this.template({
      user: this.model,
      title: "Edit",
      submit: 'Edit Account'});
    this.$el.html(content);
    return this;
  },



});
