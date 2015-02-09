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
age_groups      | integer   | not null
about           | text      | not null
genders         | string    | not null
date            | date      | not null
time            | time      | not null
title           | string    | not null
organizer_id    | integer   | not null, index



## genders_allowed
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
meeting_id      | integer   | not null, index
gender_id       | boolean   | not null, index

## genders
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
gender          | string    | not null

## levels_allowed
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
meeting_id      | integer   | not null, index
level_id        | boolean   | not null, index

## levels
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
level           | string    | not null


## age_groups_allowed
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
meeting_id      | integer   | not null, index
age_group_id    | integer   | not null, index

## age_groups
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
age_group       | string    | not null

## comments
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
commentable_id  | integer   | not null, index
commentable_type| integer   | not null, index
