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

ActiveRecord::Schema.define(version: 20141029141712) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "imports", force: true do |t|
    t.date     "date"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "info_settings", force: true do |t|
    t.string   "category"
    t.string   "page_url"
    t.string   "title_rus"
    t.string   "title_eng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lectors", force: true do |t|
    t.string   "first_name"
    t.string   "father_name"
    t.string   "last_name"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "bio"
  end

  create_table "seminar_programs", force: true do |t|
    t.integer  "ruseminar_id"
    t.text     "program"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seminar_sections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seminar_sections", ["name"], name: "index_seminar_sections_on_name", using: :btree

  create_table "seminar_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seminar_types", ["name"], name: "index_seminar_types_on_name", using: :btree

  create_table "seminars", force: true do |t|
    t.integer  "ruseminar_id"
    t.string   "title"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "online"
    t.string   "url"
    t.integer  "price1"
    t.integer  "price2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lectors"
    t.integer  "seminar_type_id"
    t.integer  "seminar_section_id"
  end

  create_table "updates", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
