Tennisify.Views.showResponse = Backbone.View.extend({
  respondedTemplate: JST['responses/show_response'],

  notRespondedTemplate: JST['responses/show_buttons'],

  className: "response-box respondent",

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
  },

  events: {
    "click .respond-button": "createResponse"
  },

  render: function () {
    var responseStatus = this.model.get("response_status");
    if (responseStatus) {
      var responseBox = this.respondedTemplate({
        response: responseStatus
      });
    } else{
      var responseBox = this.notRespondedTemplate();
    }
    this.$el.html(responseBox);
    return this;
  },

  createResponse: function (event) {
    event.preventDefault();
    this.model.set({"meeting_id": this.$el.data("meeting-id"), "response_status": $(event.currentTarget).val()});
    this.model.save();
  },
});
