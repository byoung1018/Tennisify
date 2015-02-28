Tennisify.Views.newMeeting = Backbone.ErrorView.extend({
  template: JST['meetings/form'],
  events: {
    "click button.submit-meeting": "createMeeting"
  },
  className: "meeting-form",
  tagName: "form",

  createMeeting: function (event) {
    var attrs = $(event.delegateTarget).serializeJSON()["meeting"];
    var meeting = new Tennisify.Models.Meeting(attrs);
    meeting.save({}, {
      success: function (meeting) {
        Backbone.history.navigate("meetings/" + meeting.id, {trigger: true})
      },
      error: function (meeting, errors) {
        event.preventDefault();
        this.renderErrors(errors)
      }.bind(this)
    })
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
