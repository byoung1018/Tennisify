Tennisify.Views.showUser = Backbone.View.extend({
  template: JST['users/show'],
  phoneTemplate: JST['users/phone'],

  render: function () {
    debugger
    var edit = this.model.id == currentUser ? true : false
    if (currentUser == this.model.id) {
      if (this.model.get("phone_status") === "unverified") {
        var button = '<button class="verify-phone">Verify Phone Number</button>'
      }
      var phone = this.phoneTemplate({user: this.model, button: button})
    }


    var content = this.template({
      user: this.model,
      edit: edit,
      phone: phone
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
