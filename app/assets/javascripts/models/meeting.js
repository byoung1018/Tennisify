Tennisify.Models.Meeting = Backbone.Model.extend({
  urlRoot: "api/meetings",
  parse: function (response) {
    var userResponse = response.current_user_response;
    if (userResponse) {
      this.response().set(userResponse);
      delete response.current_user_response;
    }
    return response;
  },

  organizer: function () {
    if (!this._organizer) {
      this._organizer = new Tennisify.Model.User({id: this.get("organizer_id")})
    }
  },

  response: function () {
    if (!this._response) {
      this._response = new Tennisify.Models.Response();
    }
    return this._response;
  },
});
