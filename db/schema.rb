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

ActiveRecord::Schema.define(version: 20140823180618) do

  create_table "imports", force: true do |t|
    t.date     "date"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lectors", force: true do |t|
    t.string   "first_name"
    t.string   "father_name"
    t.string   "last_name"
    t.string   "bio"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seminar_programs", force: true do |t|
    t.integer  "ruseminar_id"
    t.text     "program"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seminar_sections", force: true do |t|
    t.string   "section"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seminar_types", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seminars", force: true do |t|
    t.integer  "ruseminar_id"
    t.string   "title"
    t.integer  "type"
    t.integer  "section"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "online"
    t.integer  "lector"
    t.string   "url"
    t.integer  "price1"
    t.integer  "price2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
