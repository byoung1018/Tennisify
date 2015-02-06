Tennisify.Views.MeetingIndexItem = Backbone.View.extend({
  template: JST['meetings/index_item'],
  render: function () {
    var content = this.template({
      meeting: this.model});
    this.$el.html(content);

    return this;
  },

});
