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

ActiveRecord::Schema.define(version: 20161213161246) do

  create_table "commands", force: :cascade do |t|
    t.string "name",         limit: 255
    t.string "action_class", limit: 255
    t.string "params",       limit: 255, default: "0"
  end

  create_table "houses", force: :cascade do |t|
    t.string   "host_name",   limit: 255
    t.string   "address",     limit: 255
    t.boolean  "main",                    default: false
    t.boolean  "booked",                  default: false
    t.string   "host_number", limit: 11
    t.string   "location",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "link",        limit: 255
  end

  create_table "people", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.boolean  "payed",                  default: false
    t.string   "tel_number", limit: 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "username",   limit: 255
    t.datetime "last_date",              default: '2016-12-11 13:35:02'
    t.boolean  "is_blocked",             default: false
    t.integer  "person_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chat_id",    limit: 4
  end

end
