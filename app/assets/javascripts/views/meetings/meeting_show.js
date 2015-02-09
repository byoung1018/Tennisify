Tennisify.Views.ShowMeeting = Backbone.View.extend({
  template: JST['meetings/show'],
  initialize: function () {
    this.listenTo(this.model, "sync", this.render)
  },

  events: {
    "click button.accept-meeting": "createResponse"
  },

  render: function () {

    var responseContent = new Tennisify.Views.showResponse({
      model: this.model.response()
    })

    var meetingShow = this.template({
      meeting: this.model
    });
    this.$el.html(meetingShow);
    this.$('.response').html(responseContent.render().$el);
    this.$('.response-box').data("meeting-id", this.model.id)
    return this;
  },

  createResponse: function (event) {
    debugger
  }
});
