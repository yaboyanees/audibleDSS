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

ActiveRecord::Schema.define(version: 20141221031202) do

  create_table "d_plays", force: true do |t|
    t.string   "name"
    t.string   "picture"
    t.string   "formation"
    t.string   "play_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.integer  "teamHasO_id"
    t.integer  "teamHasD_id"
    t.integer  "qtr"
    t.time     "clock"
    t.integer  "down"
    t.integer  "yds_togo"
    t.string   "side"
    t.integer  "yd_line"
    t.string   "ball_pos"
    t.string   "pass_dist"
    t.string   "pass_dir"
    t.string   "run_type"
    t.string   "run_loc"
    t.string   "run_dir"
    t.integer  "result"
    t.integer  "score_diff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "o_plays", force: true do |t|
    t.string   "name"
    t.string   "picture"
    t.string   "formation"
    t.string   "play_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_has_ds", force: true do |t|
    t.integer  "team_id"
    t.integer  "dPlay_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "team_has_os", force: true do |t|
    t.integer  "team_id"
    t.integer  "oPlay_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
