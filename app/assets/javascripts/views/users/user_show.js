Tennisify.Views.showUser = Backbone.View.extend({
  template: JST['users/show'],
  phoneTemplate: JST['users/phone'],

  render: function () {
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
    "click .verify-phone": "verifyPhone",
    "#modal hide.bs.modal": "routeBack"
  },

  verifyPhone: function (event) {
    event.preventDefault()
    $.ajax({
      url: "/api/verify_phone",
      type: "POST",
      success: function (verification_code) {
        console.log(verification_code);
      }.bind(this),
      error: function (errors) {
        console.log(errors);
      }.bind(this),
      dataType: 'json'
    })
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
