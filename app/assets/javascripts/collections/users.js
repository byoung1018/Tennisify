Tennisify.Collections.Users = Backbone.Collection.extend({
  url: "api/users",
  model: Tennisify.Models.User,
  getOrFetch: function (id, callback) {
    var user = this.get(id),
    that = this;

    if(!user) {
      user = new Tennisify.Models.User({ id: id });
      user.fetch({
        success: function (user) {
          that.add(user);
          verifyPicture(user);
          callback(user);
        },
      });
    } else {
        callback && callback(user);
    }

    return user;
  }
});
