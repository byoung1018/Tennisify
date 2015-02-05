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

  response: function () {
    if (!this._response) {
      this._response = new Tennisify.Models.Response();
    }
    return this._response;
  },
});
