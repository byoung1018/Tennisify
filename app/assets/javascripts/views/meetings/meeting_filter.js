Tennisify.Views.filterMeeting = Backbone.View.extend({
  template: JST['meetings/filter'],
  tagName: "form",
  events: {
    "input .filter": "runFilter",
    "click .toggle-filter-button": "toggleFilter"
  },

  initialize: function () {
  },

  tagName: "form",


  toggleFilter: function (event) {
    this._filterShowing = !this._filterShowing;
    this._toggleButton
    if (this._filterShowing) {
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
    this._filterShowing = true;
    return this;
  },

  runFilter: function (event) {
    event.preventDefault();
    var filter = $(event.delegateTarget).serializeJSON();
    Tennisify.Collections.meetings.fetch({data: filter})
  },

});
