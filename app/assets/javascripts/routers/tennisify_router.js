Tennisify.Routers.TennisifyRouter = Backbone.Router.extend({
  routes:{
    "": "index",
    "login": "showLogin",
    "users/new": "newUser",
    "users/:id": "showUser",
    "meetings/new": "newMeeting",
    "meetings/:id/edit": "editMeeting",
    "meetings/:id": "showMeeting",
  },

  events: {
    "route": "checkLogin",

  },


  checkLogin: function (route, params) {
    if (!currentUser && route != "newUser" && route != "login") {
      Backbone.history.navigate("login", { trigger: true })
    }
    Tennisify.routeHistory[1] = Tennisify.routeHistory[0];
    Tennisify.routeHistory[0] = {route: route, params: params};
  },

  showLogin: function () {
    var loginPage = new Tennisify.Views.SessionNew();
    this.showModal(loginPage);
  },

  initialize: function () {
    this.listenTo(this, "route", this.checkLogin);
    this._index = $(".meeting-index");
    this._show = $(".meeting-show")
    this.$rootEl = $('#main');
    this._modal = $("#modal-view");
    this.createNavBarView();
    this.createModalView();
  },

  createModalView: function () {
    var view = new Tennisify.Views.Modal({model: this.routes});
    $("#modal-view").html(view.render().$el);
  },

  createNavBarView: function () {
    this.navBar = new Tennisify.Views.NavBar();
  },

  index: function () {
    this._indexRendered = true
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

  _swapView: function (view, container) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this._show.html(view.$el);
  },



  showModal: function (view) {
    Tennisify.currentModalView && Tennisify.currentModalView.remove();
    Tennisify.currentModalView = view;
    Tennisify.modalContent.html(view.render().$el);
    $('#modal').modal('toggle')
  },

  showMeeting: function (id) {
    if(!this._indexRendered){this.index();}
    this.shrinkIndex();
    this._show.removeClass("hidden")
    var meeting =
      Tennisify.Collections.meetings.getOrFetch(id);
    var view = new Tennisify.Views.ShowMeeting({
      model: meeting
    });
    this._swapView(view);
  },

  showUser: function (id) {
    event.preventDefault();
    var user = Tennisify.Collections.users.getOrFetch(id, function () {
      var userView = new Tennisify.Views.showUser({model: user});
      this.showModal(userView);
    }.bind(this))

  },

  shrinkIndex: function () {
    $("#filter-container").collapse();
    Tennisify.filterShowing = false;
    $("button.toggle-filter-button").html("Show Filter" + chevron("down"))
    this._index.addClass("col-sm-3");
    this._index.addClass("individual-scroll");
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
