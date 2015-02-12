Tennisify.Models.Meeting = Backbone.Model.extend({
  urlRoot: "api/meetings",
  parse: function (response) {
    var userResponse = response.current_user_response;
    var responses = response.responses
    if (userResponse) {
      this.response().set(userResponse);
      delete response.current_user_response;
    }
    if (responses) {
      response.responses.forEach(function (userResponse) {
        var respondent = new Tennisify.Models.User(userResponse.respondent);
        respondent.set("response", userResponse.response_status);
        console.log(this.respondents());
        this.respondents().add(respondent);
      }.bind(this))
      delete response.responses;
    }
    return response;
  },

  respondents: function () {
    if (!this._respondents) {
      this._respondents = new Tennisify.Collections.Users();
    }
    return this._respondents;
  },

  response: function () {
    if (!this._response) {
      this._response = new Tennisify.Models.Response();
    }
    return this._response;
  },
});
