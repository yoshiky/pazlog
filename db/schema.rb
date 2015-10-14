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

ActiveRecord::Schema.define(version: 20151012174511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dungeon_histories", force: :cascade do |t|
    t.date     "started_on"
    t.date     "closed_on"
    t.integer  "dungeon_id"
    t.text     "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  add_index "dungeon_histories", ["dungeon_id"], name: "index_dungeon_histories_on_dungeon_id", using: :btree

  create_table "dungeon_kinds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  create_table "dungeons", force: :cascade do |t|
    t.string   "name",              null: false
    t.integer  "dungeon_kind_id",   null: false
    t.integer  "boss_monster_1_id"
    t.integer  "boss_monster_2_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.datetime "deleted_at"
  end

  create_table "monsters", force: :cascade do |t|
    t.string   "name"
    t.integer  "book_no"
    t.boolean  "descent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.boolean  "discontinued"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "dungeon_histories", "dungeons"
end
