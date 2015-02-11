Tennisify.Views.MeetingsIndex = Backbone.CompositeView.extend({
  template: JST['meetings/index'],
  initialize: function () {
    this.listenTo(this.collection, "add, sync", this.renderIndex)
    this.showFilter = true;
  },
  className: "meetings-index",
  events: {
    // "click .toggle-filter": this.toggleFilter,
    "onchange .filter": this.renderIndex
  },

  // toggleFilter: function () {
  //   this.showFilter = !this.showFilter;
  //   this.renderFilter();
  // },

  render: function () {
    var index = this.template();
    this.$el.html(index);

    this.renderIndex();
    this.renderFilter();
    return this;
  },

  renderFilter: function () {
    var filter = new Tennisify.Views.filterMeeting();
    this.addSubview('.meeting-filter', filter);
  },

  renderIndex: function () {
    this.$(".meeting-index").empty();
    this.collection.each(function (indexItem) {
      var indexItemContent = new Tennisify.Views.MeetingIndexItem({
        model: indexItem
      });
      this.$(".meeting-index").append(indexItemContent.render().$el);
    }.bind(this))

  },
});
