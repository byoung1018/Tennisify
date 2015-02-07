# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150206171848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meetings", force: true do |t|
    t.string   "title",        null: false
    t.integer  "organizer_id", null: false
    t.text     "about"
    t.date     "date",         null: false
    t.time     "time",         null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "max_players",  null: false
    t.boolean  "public",       null: false
    t.string   "location",     null: false
    t.string   "level",        null: false
    t.integer  "age_groups",   null: false
    t.string   "genders",      null: false
  end

  create_table "responses", force: true do |t|
    t.integer  "respondent_id",   null: false
    t.integer  "meeting_id",      null: false
    t.string   "response_status", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "responses", ["meeting_id"], name: "index_responses_on_meeting_id", using: :btree
  add_index "responses", ["respondent_id"], name: "index_responses_on_respondent_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "fname",           null: false
    t.string   "lname"
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email",           null: false
    t.string   "username",        null: false
    t.string   "level"
    t.string   "location"
    t.integer  "age"
    t.boolean  "reveal_age",      null: false
    t.string   "gender"
    t.string   "picture"
  end

end
