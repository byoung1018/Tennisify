Tennisify.Views.MeetingRespondents = Backbone.CompositeView.extend({
  template: JST['responses/respondents'],
  container: JST['responses/respondent_container'],
  initialize: function () {
    this.listenTo(this.collection, "sync add", this.render)
  },
  render: function () {
    this.$el.empty();
    this.$el.html(this.container());

    this.collection.each(function (respondent) {
      verifyPicture(respondent);
      var content = this.template({
        respondent: respondent});
      this.$("." + respondent.get("response")).append(content);


    }.bind(this))
      var responseContent = new Tennisify.Views.showResponse({
        model: this.model.response()
      })
      this.$('.response').html(responseContent.render().$el);
      this.$('.response-box').data("meeting-id", this.model.id)

    return this;
  },

});
