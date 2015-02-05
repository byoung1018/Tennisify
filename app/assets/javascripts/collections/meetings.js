Tennisify.Collections.Meetings = Backbone.Collection.extend({
  url: "api/meetings",
  model: Tennisify.Models.Meeting,

  getOrFetch: function (id) {
    var meeting = this.get(id),
      that = this;

    if(!meeting) {
      meeting = new Tennisify.Models.Meeting({ id: id });
      meeting.fetch({
        success: function () {
          that.add(meeting);
        },
      });
    } else {
      meeting.fetch();
    }
    return meeting;
  }

});

Tennisify.Collections.allMeetings = new Tennisify.Collections.Meetings();
