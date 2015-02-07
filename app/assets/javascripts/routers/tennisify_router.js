Tennisify.Routers.TennisifyRouter = Backbone.Router.extend({
  routes:{
    "": "index",
    "login": "showLogin",
    "users/new": "newUser",
    "meetings/new": "newMeeting",
    "meetings/:id/edit": "editMeeting",
    "meetings/:id": "showMeeting",
  },

  events: {
    "route": "checkLogin"
  },

  checkLogin: function (route, params) {
    if (!currentUser && route != "newUser" && route != "login") {
      Backbone.history.navigate("login", { trigger: true })
    }
  },

  showLogin: function () {
    var loginPage = new Tennisify.Views.SessionNew();
    this._swapView(loginPage);
  },

  initialize: function () {
    this.listenTo(this, "route", this.checkLogin)
    this.$rootEl = $('#main');
  },

  index: function () {
    Tennisify.Collections.meetings.fetch()
    var index = new Tennisify.Views.MeetingsIndex({
      collection: Tennisify.Collections.meetings
    });
    this._swapView(index);
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  },

  newMeeting: function () {
    var meeting = new Tennisify.Views.newMeeting({});
    this._swapView(meeting);
  },

  showMeeting: function (id) {
    var meeting =
      Tennisify.Collections.meetings.getOrFetch(id);
    var view = new Tennisify.Views.ShowMeeting({
      model: meeting
    });
    this._swapView(view);
  },

  editMeeting: function (id) {
    var meeting =
      Tennisify.Collections.meetings.getOrFetch(id);
    var view = new Tennisify.Views.EditMeeting({
      model: meeting
    });
    this._swapView(view);
  },

  newUser: function () {
    var user = new Tennisify.Views.newUser({});
    this._swapView(user);
  },
})
