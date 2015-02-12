Tennisify.Views.MeetingRespondents = Backbone.CompositeView.extend({
  template: JST['responses/respondents'],
  container: JST['responses/respondent_container'],
  initialize: function () {
    this.listenTo(this.collection, "sync", this.render)
  },
  render: function () {
    this.$el.empty();
    this.$el.html(this.container());

    this.collection.each(function (respondent) {
      console.log(respondent.get('fname'));
      verifyPicture(respondent);
      var content = this.template({
        respondent: respondent});
      this.$("." + respondent.get("response")).append(content);

    }.bind(this))

    return this;
  },

});
