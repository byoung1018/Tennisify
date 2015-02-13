Tennisify.Views.Modal = Backbone.View.extend({
  template: JST['modal'],
  render: function () {
    var content = this.template();
    this.$el.html(content);

    return this;
  },

  events: {
    "hide.bs.modal #modal": "routeBack"
  },
  routeBack: function () {
    console.log("going back");
    var lastRoute = Tennisify.routeHistory[1];
    if (lastRoute || (lastRoute === "" && lastRoute != "showLogin")) {
      var route = key(this.model, lastRoute.route)
      if (route.indexOf(":id") > -1) {
        var id = "" + (lastRoute.params[0]).toString();
        route = route.replace(":id", id);
      }

      Backbone.history.navigate(route, {trigger: true});
    }
    else {
      Backbone.history.navigate("/", {trigger: true});
    }
  },
});
