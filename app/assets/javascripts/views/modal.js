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
});
