# Schema Information
## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
fname           | string    | not null
lname           | string    |
level           | string    |
location        | string    |
about           | text      |
age             | integer   |
reveal_age      | boolean   | not null
gender          | string    |
picture         | string    |
password_digest | string    | not null
session_token   | string    | not null, unique



## responded_players
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
player_id       | integer   | not null, index
meeting_id      | integer   | not null, index
response_status | string    | not null


## meetings
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
max_players     | integer   | not null
public          | boolean   | not null
location        | string    | not null
level           | string    | not null
about           | text      | not null
age_groups      | integer   | not null
genders         | string    | not null
date            | date      | not null
time            | time      | not null
title           | string    | not null
organizer_id    | integer   | not null, index




## comments
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
commentable_id  | integer   | not null, index
commentable_type| integer   | not null, index
