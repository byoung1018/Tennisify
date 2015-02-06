Backbone.ErrorView = Backbone.View.extend({
  renderErrors: function (errors) {
    this.$(".errors").empty();
    var errorObject = JSON.parse(errors.responseText)
  
    errorObject.errors.forEach(function (error) {
      var errorHTML = $("<li>");
      errorHTML.text(error);
      this.$(".errors").append(errorHTML);
    })
  },
});
