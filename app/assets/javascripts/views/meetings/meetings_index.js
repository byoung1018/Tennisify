Tennisify.Views.MeetingsIndex = Backbone.CompositeView.extend({
  template: JST['meetings/index'],
  initialize: function () {
    this.listenTo(this.collection, "add, sync", this.render)
  },

  render: function () {
    this.$el.empty();
    this.collection.each(function (indexItem) {
      var indexItemContent = new Tennisify.Views.MeetingIndexItem({
        model: indexItem
      });
      var content = indexItemContent.render().$el
      this.$el.append(content);
    }.bind(this))
    return this;
  },

});
