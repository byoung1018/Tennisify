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
    "route": "checkLogin",
  },





  checkLogin: function (route, params) {
    console.log("here");
    if (!currentUser && route != "newUser" && route != "login") {
      Backbone.history.navigate("login", { trigger: true })
    }
  },

  showLogin: function () {
    var loginPage = new Tennisify.Views.SessionNew();

    this._swapView(loginPage);
  },

  initialize: function () {
    this.listenTo(this, "route", this.checkLogin);
    this._index = $(".meeting-index");
    this._show = $(".meeting-show")
    this.$rootEl = $('#main');
    this._modal = $("#modal-view");
    this.createNavBarView();
  },

  createNavBarView: function () {
    this.navBar = new Tennisify.Views.NavBar();
  },

  index: function () {
    Tennisify.Collections.meetings.fetch()
    this._index.removeClass("col-sm-3");
    this._index.addClass("col-sm-offset-1");
    this._index.addClass("col-sm-10");
    this._show.addClass("hidden");
    var index = new Tennisify.Views.MeetingsIndex({
      collection: Tennisify.Collections.meetings
    });
    $(".meeting-index").html(index.render().$el);


    var filter = new Tennisify.Views.filterMeeting();
    $(".meeting-filter").html(filter.render().$el);

  },

  renderFilter: function () {

  },

  _swapView: function (view, container) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this._show.html(view.$el);
  },



  showModal: function (view) {
    this._modalView && this._modalView.remove();
    this._modalView = view;
    this._modal.html(view.render().$el);

  },

  showMeeting: function (id) {
    this.shrinkIndex();
    this._show.removeClass("hidden")
    var meeting =
      Tennisify.Collections.meetings.getOrFetch(id);
    var view = new Tennisify.Views.ShowMeeting({
      model: meeting
    });
    this._swapView(view);
  },

  shrinkIndex: function () {
    $("#filter-container").collapse();
    this._index.addClass("col-sm-3");
    this._index.removeClass("col-sm-offset-1");
    this._index.removeClass("col-sm-10");
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
