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

ActiveRecord::Schema.define(version: 20150206150943) do

  create_table "districts", force: :cascade do |t|
    t.string   "cdistrict"
    t.integer  "zip"
    t.integer  "vote_id"
    t.integer  "pol_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "districts", ["pol_id"], name: "index_districts_on_pol_id"
  add_index "districts", ["vote_id"], name: "index_districts_on_vote_id"

  create_table "pols", force: :cascade do |t|
    t.string   "congressman"
    t.string   "party"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string   "issue"
    t.boolean  "how_vote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
