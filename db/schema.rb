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

ActiveRecord::Schema.define(version: 20140710190327) do

  create_table "athletes", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "nickname"
    t.date     "dob"
    t.integer  "gradyear"
    t.boolean  "active"
    t.float    "height"
    t.float    "weight"
    t.string   "email"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
  end

  create_table "athletes_teams", force: true do |t|
    t.integer  "team_id",    null: false
    t.integer  "athlete_id", null: false
    t.boolean  "captain"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "athletes_teams", ["athlete_id", "team_id"], name: "index_athletes_teams_on_athlete_id_and_team_id", unique: true

  create_table "coaches", force: true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "nickname"
    t.boolean  "active"
    t.string   "email"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coaches_teams", force: true do |t|
    t.integer  "team_id",    null: false
    t.integer  "coach_id",   null: false
    t.boolean  "headcoach"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "coaches_teams", ["coach_id", "team_id"], name: "index_coaches_teams_on_coach_id_and_team_id", unique: true

  create_table "rosters", force: true do |t|
    t.integer  "team_id"
    t.integer  "athlete_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sports", force: true do |t|
    t.string   "name"
    t.string   "imageurl"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",     default: false
  end

  create_table "sports_venues", force: true do |t|
    t.integer  "sport_id"
    t.integer  "venue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: true do |t|
    t.integer  "team_id"
    t.integer  "coach_id"
    t.boolean  "head_coach"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.boolean  "active"
    t.string   "url"
    t.string   "twitter"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
    t.boolean  "varsity"
    t.integer  "sport_id"
    t.string   "season"
  end

  create_table "venues", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "googlemapsurl"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "twitter"
    t.string   "latlong"
  end

end
