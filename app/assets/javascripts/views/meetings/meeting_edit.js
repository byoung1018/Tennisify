Tennisify.Views.EditMeeting = Backbone.View.extend({
  template: JST['meetings/form'],

  events: {
    "click button.submit-meeting": "editMeeting"
  },
  tagName: "form",
  render: function () {
    var content = this.template({
      meeting: this.model, title: "Edit Meeting", buttonText: "Update"});
    this.$el.html(content);

    return this;
  },

  editMeeting: function (event) {
    event.preventDefault();
    var attrs = $(event.delegateTarget).serializeJSON()["meeting"];

    this.model.set(attrs);
    this.model.save({}, {success: function () {

    }})
  },

});
