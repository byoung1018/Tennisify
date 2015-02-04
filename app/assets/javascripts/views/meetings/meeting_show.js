Tennisify.Views.ShowMeeting = Backbone.View.extend({
  template: JST['meetings/show'],
  initialize: function () {
    debugger
    this.listenTo(this.model, "sync", this.render())
  },

  render: function () {
    var content = this.template({
      meeting: this.model});
    this.$el.html(content);

    return this;
  },

});
