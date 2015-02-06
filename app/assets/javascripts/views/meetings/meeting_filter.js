Tennisify.Views.filterMeeting = Backbone.View.extend({
  template: JST['meetings/filter'],
  tagName: "form",
  events: {
    "input .filter": "runFilter" //works for text
  },

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  },

  runFilter: function (event) {
    console.log(event.delegateTarget);
    event.preventDefault();
    var filter = $(event.delegateTarget).serializeJSON();
    console.log(filter);
    Tennisify.Collections.meetings.fetch({data: filter})
  },

});
