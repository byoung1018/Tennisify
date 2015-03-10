Tennisify.Views.NavBar = Backbone.View.extend({
  template: JST['nav_bar/nav_bar'],
  authButton: JST['nav_bar/auth_button'],

  initialize: function () {
    var navbar = $(".navbar");
    this.$el.html(navbar.html())
    navbar.html(this.$el)
  },


  showModal: function (view) {
    Tennisify.currentModalView && Tennisify.currentModalView.remove();
    Tennisify.currentModalView = view;
    Tennisify.modalContent.html(view.render().$el);
    $('#modal').modal('toggle')
  },

  render: function () {
    if (currentUser) {
      var link = "#logout"
      var text = "Sign Out";
    }else {
      var link = "#login"
      var text = "Sign In";
    }
    var authButton = this.authButton({
      link: link,
      text: text
    })
    var navBar = this.template({authButton: authButton});
    this.$el.html(navBar);
    return this;
  },


});
