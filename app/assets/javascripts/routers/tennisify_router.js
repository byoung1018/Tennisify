Tennisify.Routers.TennisifyRouter = Backbone.Router.extend({
  routes:{
    "": "index",
    "meetings/new": "newMeeting",
    "meetings/:id": "showMeeting"
  },

  initialize: function () {
    this.$rootEl = $('#main');
  },

  index: function () {
    Tennisify.Collections.allMeetings.fetch()
    var index = new Tennisify.Views.MeetingsIndex({
      collection: Tennisify.Collections.allMeetings
    });
    this._swapView(index);
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currenView = view;
    this.$rootEl.html(view.render().$el);
  },

  newMeeting: function () {
    var meeting = new Tennisify.Views.newMeeting({});
    this._swapView(meeting);
  },

  showMeeting: function (id) {
    var meeting =
      Tennisify.Collections.allMeetings.getOrFetch(id);
    var view = new Tennisify.Views.ShowMeeting({
      model: meeting
    });
    this._swapView(view);
  },
})
