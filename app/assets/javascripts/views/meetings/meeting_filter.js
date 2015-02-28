Tennisify.Views.filterMeeting = Backbone.View.extend({
  template: JST['meetings/filter'],
  tagName: "form",
  events: {
    "input .filter": "runFilter",
    "click .filter-click-button": "runFilter",
    "click .toggle-filter-button": "toggleFilter",
    // "click .toggle-filter-button": "toggleFilter"
  },

  initialize: function () {
  },

  tagName: "form",


  toggleFilter: function (event) {
    Tennisify.filterShowing = !Tennisify.filterShowing;
    if (Tennisify.filterShowing) {
      this._toggleButton.html("Hide Filter" + chevron("up"));
    }
    else{
      this._toggleButton.html("Show Filter" + chevron("down"));
    }
  },

  render: function () {
    var content = this.template();
    this.$el.html(content);
    this._toggleButton = this.$("button.toggle-filter-button");
    this._chevron = this.$("span.glyphicon-chevron-up")
    Tennisify.filterShowing = true;
    return this;
  },

  runFilter: function (event) {
    var filter = $(event.delegateTarget).serializeJSON();
    Tennisify.Collections.meetings.fetch({data: filter})
  },

});
