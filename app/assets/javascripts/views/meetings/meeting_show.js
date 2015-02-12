Tennisify.Views.ShowMeeting = Backbone.CompositeView.extend({
  template: JST['meetings/show'],
  initialize: function () {
    this.listenTo(this.model, "sync", this.render)
    this.listenTo(this.model.respondents(), "sync", this.render)
  },

  events: {
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
    var respondentsShow = new Tennisify.Views.MeetingRespondents({
      collection: this.model.respondents()
    })
    this.addSubview(".respondents", respondentsShow)
    return this;
  },

});
