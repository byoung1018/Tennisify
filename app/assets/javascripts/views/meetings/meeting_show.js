Tennisify.Views.ShowMeeting = Backbone.CompositeView.extend({
  template: JST['meetings/show'],
  initialize: function () {
    this.listenTo(this.model, "sync", this.render)
    this.listenTo(this.model.respondents(), "sync", this.render)
  },

  events: {
  },

  render: function () {

    var meetingShow = this.template({
      meeting: this.model
    });
    this.$el.html(meetingShow);

    var respondentsShow = new Tennisify.Views.MeetingRespondents({
      collection: this.model.respondents(),
      model: this.model
    })
    this.addSubview(".respondents", respondentsShow)
    return this;
  },

});
