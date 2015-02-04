window.Tennisify = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new Tennisify.Routers.TennisifyRouter();
    Backbone.history.start();
  }
};
