Tennisify.Routers.TennisifyRouter = Backbone.Router.extend({
  routes:{
    "": "index",
    "login": "login",
    "logout": "logout",
    "users/new": "newUser",
    "users/:id": "showUser",
    "meetings/new": "newMeeting",
    "meetings/:id/edit": "editMeeting",
    "meetings/:id": "showMeeting",
  },

  showCreateUser: function () {
    event.preventDefault();
    var user = new Tennisify.Models.User();
    var view = new Tennisify.Views.NewUser({model: user});
    this.showModal(view);
  },

  newMeeting: function () {
    if (!currentUser) {
      Backbone.history.navigate("login", { trigger: true })
    } else{
      var meeting = new Tennisify.Views.newMeeting();
      this.showModal(meeting);
    }
  },


  checkLogin: function (route, params) {
    if (!currentUser) {
      Backbone.history.navigate("login", { trigger: true })

    }
    Tennisify.routeHistory[1] = Tennisify.routeHistory[0];
    Tennisify.routeHistory[0] = route;
  },

  login: function () {
    var loginPage = new Tennisify.Views.SessionNew();
    this.$rootEl.html(loginPage.render().$el);
  },

  initialize: function () {
    this.listenTo(this, "route", this.checkLogin);
    this._index = $(".meeting-index");
    this._show = $(".meeting-show")
    this.$rootEl = $('#main');
    this._modal = $("#modal-view");
    this.createModalView();
  },

  createModalView: function () {
    var view = new Tennisify.Views.Modal({model: this.routes});
    $("#modal-view").html(view.render().$el);
  },

  index: function () {
    if (!this._pageRendered) {this.renderPage();}
    Tennisify.Collections.meetings.fetch()
    this._index.removeClass("col-sm-3");
    this._index.addClass("col-sm-offset-1");
    this._index.addClass("col-sm-10");
    this._show.addClass("hidden");
  },

  renderPage: function () {
    this._pageRendered = true
    $("#main").html(JST['main']());
    Tennisify.Collections.meetings.fetch();
    var navBar = new Tennisify.Views.NavBar();
    $("nav.navbar").html(navBar.render().$el);
    var filter = new Tennisify.Views.filterMeeting();
    $(".meeting-filter").html(filter.render().$el);
    var index = new Tennisify.Views.MeetingsIndex({
      collection: Tennisify.Collections.meetings
    });
    $(".meeting-index").html(index.render().$el);
    this._index = $(".meeting-index");
    this._show = $(".meeting-show");
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
    $('#modal').modal('toggle');
  },

  showMeeting: function (id) {
    if (!this._pageRendered) {this.renderPage();}
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
    Tennisify.Collections.users.getOrFetch(id, function (user) {
      var userView = new Tennisify.Views.showUser({model: user});
      this.showModal(userView);
    }.bind(this))
  },

  shrinkIndex: function () {
    $("#filter-container").collapse();
    Tennisify.filterShowing = false;
    $("button.toggle-filter-button").html("Show Filter" + chevron("down"))
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

  logout: function (event) {
    $.ajax({
      url: "/session",
      type: "DELETE",
      success: function (user) {
        this._pageRendered = false;
        currentUser = undefined;
        $(".create-meeting").addClass("disabled");
        $(".show-profile").addClass("disabled");
        Backbone.history.navigate("/login", {trigger:true});
      }.bind(this),
      dataType: 'json'
    })
  }
})
