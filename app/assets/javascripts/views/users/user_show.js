Tennisify.Views.showUser = Backbone.View.extend({
  template: JST['users/show'],
  render: function () {
    var edit = this.model.id == currentUser ? true : false
    var content = this.template({
      user: this.model,
      edit: edit
    });
    this.$el.html(content);
    return this;
  },

  events: {
    "click .edit-button": "editUser",
    "#modal hide.bs.modal": "routeBack"
  },
  editUser: function () {
    event.preventDefault();
    // var user = Tennisify.Collections.users.getOrFetch(this)
    var view = new Tennisify.Views.EditUser({model: this.model});
    Tennisify.modalContent.html(view.render().$el);
  },

  routeBack: function () {
    var lastRoute = Tennisify.routeHistory[0];
    if (lastRoute || lastRoute === "") {
      Backbone.history.navigate(lastRoute, {trigger: true});
    }
    else {
      Backbone.history.navigate("/", {trigger: true});
    }
  },

});
