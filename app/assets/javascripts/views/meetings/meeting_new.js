Tennisify.Views.newMeeting = Backbone.View.extend({
  template: JST['meetings/new'],
  events: {
    "click button.create-meeting": "createMeeting"
  },
  className: "new-meeting-form",
  tagName: "form",

  createMeeting: function (event) {
    event.preventDefault();
    var attrs = $(event.delegateTarget).serializeJSON()["meeting"];

    var meeting = new Tennisify.Models.Meeting(attrs);
    meeting.save({}, {success: function () {

    }})
  },

  render: function () {
    var content = this.template();
    this.$el.html(content);

    return this;
  },

});
