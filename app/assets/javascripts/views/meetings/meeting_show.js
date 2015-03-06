Tennisify.Views.ShowMeeting = Backbone.CompositeView.extend({
  template: JST['meetings/show'],
  initialize: function () {
    this.listenTo(this.model, "sync", this.render)
    this.listenTo(this.model.respondents(), "sync", this.render)
  },

  events: {
    "click .meeting-edit": "editMeeting",
  },

  render: function () {
    var edit = this.model.get("organizer_id") === currentUser ? true : false
    var meetingShow = this.template({
      meeting: this.model,
      edit: edit
    });
    this.$el.html(meetingShow);
    var respondentsShow = new Tennisify.Views.MeetingRespondents({
      collection: this.model.respondents(),
      model: this.model
    })
    this.addSubview(".respondents", respondentsShow)
    return this;
  },


  showModal: function (view) {
    Tennisify.currentModalView && Tennisify.currentModalView.remove();
    Tennisify.currentModalView = view;
    Tennisify.modalContent.html(view.render().$el);
    $('#modal').modal('toggle')
  },

  editMeeting: function (event) {
    event.preventDefault();
    var view = new Tennisify.Views.EditMeeting({model: this.model});
    this.showModal(view);
  },

});
