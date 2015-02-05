Tennisify.Views.newMeeting = Backbone.View.extend({
  template: JST['meetings/form'],
  events: {
    "click button.submit-meeting": "createMeeting"
  },
  className: "meeting-form",
  tagName: "form",

  createMeeting: function (event) {
    event.preventDefault();
    var attrs = $(event.delegateTarget).serializeJSON()["meeting"];

    var meeting = new Tennisify.Models.Meeting(attrs);
    meeting.save({}, {success: function () {

    }})
  },

  render: function () {
    var content = this.template({
      title: "Create Meeting",
      buttonText: "Create",
      meeting: new Tennisify.Models.Meeting()
      });
    this.$el.html(content);

    return this;
  },

});
