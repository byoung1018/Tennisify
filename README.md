# Tennisify


## Minimum Viable Product
Tennisify is like a cross between meetup and evite but specifically geared
towards tennis.  Users can:
- [x] Create accounts
- [x] Create sessions (log in)
- [x] Create meetings
- [x] Respond/comment on meetings
- [x] View meetings
- [x] View index of meetings
- [x] filter meetings in index



## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/wireframes/wireframes.jpg
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, user create and show(~1.5 days)
I will implement user authentication in Rails. By the end of this phase,
users will be able to create profiles and log in with them.  There will also be
a basic view to see their profile details.

[Details][phase-one]

### Phase 2: Meeting Create, show and index (~2.5 days)
I will create pages to show, create edit and see all meetings.  By the end of this
phase there will be basic pages for minimal functionality.

[Details][phase-two]

### Phase 3: Add the ability for users to accept meetings (~.5 days)

[Details][phase-three]


### Phase 4: Filter meetings (~1 day)
Unless I can find a gem (which I haven't checked for yet) I will take each of
the filter options and pass them to the index function in the controller and
have that construct a sql query with them.  


[Details][phase-four]

### Phase 5: Add comments to meetings (~1 days)
I will add a commentable item to meetings and display it in the meeting.  I
will use a polymorphic model so I can add comments to users or anything else I
decide to create later.

[Details][phase-five]

### Bonus Features (TBD)
- [ ] Add picture to profile
- [ ] Notifications through SMS (twilio)
- [ ] Send private messages (emails)
- [ ] Accepting meeting invites through SMS
- [ ] Groups (address)
- [ ] Recurring meetings
- [ ] Meeting templates
- [ ] Subscriptions to emails for new meetings that match specified filters
- [ ] Accept meeting links (sent in email notifications)
- [ ] Google maps to locate tennis courts (through address)
- [ ] A DB of tennis courts
- [ ] Invite by email (link to automatically create account, no email verification)


[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
