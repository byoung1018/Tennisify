Tennisify.Views.filterMeeting = Backbone.View.extend({
  template: JST['meetings/filter'],
  tagName: "form",
  events: {
    "input .filter": "runFilter",
    "click .colapse-button": this.colapse,
  },

  tagName: "form",
  colapse: function (event) {
    alert("here")
    event.preventDefault()
    $(".filter-container").colapse()
  },

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  },

  runFilter: function (event) {
    event.preventDefault();
    var filter = $(event.delegateTarget).serializeJSON();
    Tennisify.Collections.meetings.fetch({data: filter})
  },

});
