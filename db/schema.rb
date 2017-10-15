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

ActiveRecord::Schema.define(version: 20171015185134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "seasons", force: :cascade do |t|
    t.string   "year",       null: false
    t.string   "gp",         null: false
    t.string   "mins",       null: false
    t.string   "pts",        null: false
    t.string   "fgm_fga",    null: false
    t.string   "fg_prct",    null: false
    t.string   "three_m_a",  null: false
    t.string   "three_prct", null: false
    t.string   "ftm_fta",    null: false
    t.string   "ft_prct",    null: false
    t.string   "reb",        null: false
    t.string   "ast",        null: false
    t.string   "blk",        null: false
    t.string   "stl",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.string   "game_date",       null: false
    t.string   "opp",             null: false
    t.string   "score"
    t.string   "min"
    t.string   "fgm_fga"
    t.string   "fg_prct"
    t.string   "three_m_a"
    t.string   "three_prct"
    t.string   "ftm_fta"
    t.string   "ft_prct"
    t.string   "reb"
    t.string   "ast"
    t.string   "blk"
    t.string   "stl"
    t.string   "pts"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "video_id"
    t.string   "player_giphy_id"
    t.string   "game_giphy_id"
    t.boolean  "next_game?"
  end

end
