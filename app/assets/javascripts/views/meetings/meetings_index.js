Tennisify.Views.MeetingsIndex = Backbone.View.extend({
  template: JST['meetings/index'],
  initialize: function () {
    this.listenTo(this.collection, "add", this.render)
  },

  render: function () {
    var index = this.template();

    this.$el.html(index);
    this.collection.each(function (indexItem) {
      var indexItemContent = new Tennisify.Views.MeetingIndexItem({
        model: indexItem
      });
      this.$el.find("ul.meeting-index").append(indexItemContent.render().$el);
    }.bind(this))
    return this;
  },
});
