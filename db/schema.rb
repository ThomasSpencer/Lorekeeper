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

ActiveRecord::Schema.define(version: 20161209222236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "name"
    t.string   "profession"
    t.text     "backstory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.integer  "continent_id"
    t.string   "name"
    t.integer  "population"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "continents", force: :cascade do |t|
    t.integer  "plane_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "creatures", force: :cascade do |t|
    t.integer  "landscape_id"
    t.string   "name"
    t.string   "size"
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.text     "abilities"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "origin"
    t.text     "description"
  end

  create_table "landscapes", force: :cascade do |t|
    t.integer  "continent_id"
    t.string   "name"
    t.string   "terrain"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "planes", force: :cascade do |t|
    t.integer  "story_id"
    t.string   "name"
    t.string   "colour"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  create_table "players", force: :cascade do |t|
    t.integer  "story_id"
    t.string   "character_name"
    t.string   "player_name"
    t.text     "backstory"
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.integer  "experience"
    t.string   "alignment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.integer  "story_id"
    t.integer  "session_number"
    t.text     "notes"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string   "title"
    t.integer  "total_players"
    t.string   "ruleset"
    t.integer  "total_sessions"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "description"
  end

end
