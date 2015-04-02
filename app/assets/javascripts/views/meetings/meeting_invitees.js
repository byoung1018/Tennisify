Tennisify.Views.MeetingInvitees = Backbone.ErrorView.extend({
  template: JST['meetings/invite'],
  events: {
    "click .add-player": "addPlayer",
    "click .remove-player": "removePlayer",
    "click .cancel-invites": "cancelInvites",
    "click .save-invites": "render",
    "input .player-input": "getUsers",

  },
  initialize: function () {
    this.$invitedPlayers = this.$(".invited-players");
    this.$userList = this.$(".user-list");
    this.addPlayerOptions(this.collection, this.$invitedPlayers);

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

  render: function (event) {
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
  userExists: function (id, $container) {
    return ($container.find('[value="' + id + '"]').length !==0);
  },
});
