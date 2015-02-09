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
var LEVELS = ['2.5', '3.0', '3.5', '4.0', '4.5', '5.0', '5.5+'];
var LOCATIONS = ["Diablo North", "Diablo South", "East Bay",
        "Peninsula", "San Francisco", "Solano", "South Bay"];
var AGEGROUPS = ['1-18', '18-40', '40-55', '55-65', '65+'];
