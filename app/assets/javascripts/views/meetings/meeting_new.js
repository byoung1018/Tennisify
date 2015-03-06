Tennisify.Views.newMeeting = Backbone.ErrorView.extend({
  createTemplate: JST['meetings/form'],
  inviteTemplate: JST['meetings/invite'],
  events: {
    "click .submit-meeting": "createMeeting",
    "click .invite": "renderInvite",
    "click .add-player": "addPlayer",
    "click .remove-player": "removePlayer",
    "click .cancel-invites": "cancelInvites",
    "click .save-invites": "render",
    "input .player-input": "getUsers",

  },
  className: "meeting-form",
  tagName: "form",

  initialize: function () {
    this.users = new Tennisify.Collections.Users()
    this.listenTo(this.users, "sync", this.showUsers);
    this.$showList = $(".user-list");
    if (!this.collection) {this.collection = new Tennisify.Collections.Users()};

  },

  createMeeting: function (event) {
    event.preventDefault();
    var attrs = $(event.delegateTarget).serializeJSON()["meeting"];
    var invitedIds = []
    this.collection.each(function (player) {
      invitedIds.push(player.id)
    })
    var meeting = new Tennisify.Models.Meeting(attrs);
    meeting.set("invited", invitedIds);
    meeting.save({}, {
      success: function (meeting) {
        Backbone.history.navigate(("meetings/" + meeting.id), {trigger: true})
        $('#modal').modal('toggle')
      },
      error: function (meeting, errors) {
        this.renderErrors(errors)
      }.bind(this)
    })
  },

  moveSelected: function ($from, $to, callback) {
    $from.children(":selected").each(function (i, item) {
      $item = $(item)
      $item.remove().appendTo($to);
      callback && callback($item);
    }.bind(this));
  },

  addPlayer: function (event) {
    event.preventDefault();
    this.moveSelected(this.$userList, this.$invitedPlayers, function ($player) {
      this.collection.add(this.users.get($player.val()));
    }.bind(this));
  },

  removePlayer: function (event) {
    event.preventDefault();
    this.moveSelected(this.$invitedPlayers, this.$userList, function ($player) {
      this.collection.remove(this.users.get($player.val()));
    }.bind(this));
  },

  cancelInvites: function (event) {
    event.preventDefault();
    this.collection = new Tennisify.Collections.Users();
    this.render();
  },

  showUsers: function () {
    this.$userList.empty();

    this.addPlayerOptions(this.users, this.$userList)
  },

  userExists: function (id, $container) {
    return ($container.find('[value="' + id + '"]').length !==0);
  },

  renderInvite: function (event) {
    event.preventDefault();
    var attrs = $(event.delegateTarget).serializeJSON()["meeting"];
    this.model = new Tennisify.Models.Meeting(attrs);
    var content = this.inviteTemplate();
    this.$el.html(content);
    this.$invitedPlayers = this.$(".invited-players");
    this.$userList = this.$(".user-list");
    this.addPlayerOptions(this.collection, this.$invitedPlayers);
    return this
  },

  addPlayerOptions: function (players, $container) {
    players.each(function (player) {
      if (this.userExists(player.id, $container)) {return}
      var entry = $("<option>");
      entry.text(player.get("fname") + " " + player.get("lname"));
      entry.val(player.id);
      $container.append(entry);
    }.bind(this));
  },

  getUsers: function (event) {
    var name = {"name": $(event.currentTarget).val()}
    this.users.fetch({"data": name})
  },

  render: function () {
    if (!this.model) {this.model = new Tennisify.Models.Meeting();}
    var content = this.createTemplate({
      title: "Create Meeting",
      buttonText: "Create",
      meeting: this.model
    });
    this.$el.html(content);
    this.$invited = this.$(".display-invited");
    this.collection.each(function (user) {
      var li = $("<li>");
      li.text(user.get("fname") + " " + user.get("lname"))
      this.$invited.append(li)
    }.bind(this))

    return this;
  },

});
