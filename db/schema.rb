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

ActiveRecord::Schema.define(version: 20130814223258) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "club_instructors", force: true do |t|
    t.integer  "club_id"
    t.integer  "instructor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "club_instructors", ["club_id"], name: "index_club_instructors_on_club_id", using: :btree
  add_index "club_instructors", ["instructor_id"], name: "index_club_instructors_on_instructor_id", using: :btree

  create_table "club_users", force: true do |t|
    t.integer  "club_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "club_users", ["club_id"], name: "index_club_users_on_club_id", using: :btree
  add_index "club_users", ["user_id"], name: "index_club_users_on_user_id", using: :btree

  create_table "clubs", force: true do |t|
    t.string   "cAbbrv"
    t.string   "city"
    t.string   "address"
    t.string   "brand"
    t.string   "phone"
    t.string   "link"
    t.string   "sfdc_name"
    t.string   "fb"
    t.string   "twitter"
    t.string   "timezone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gx_class_set_reservations", force: true do |t|
    t.integer  "gx_class_set_id"
    t.integer  "reservation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gx_class_set_reservations", ["gx_class_set_id"], name: "index_gx_class_set_reservations_on_gx_class_set_id", using: :btree

  create_table "gx_class_sets", force: true do |t|
    t.integer  "gx_class_id"
    t.integer  "studio_id"
    t.integer  "instructor_id"
    t.integer  "level"
    t.date     "start_date"
    t.integer  "repeat_times"
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "reservable"
    t.text     "paid_class_csi_id"
    t.integer  "reserve_max"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gx_class_sets", ["gx_class_id"], name: "index_gx_class_sets_on_gx_class_id", using: :btree
  add_index "gx_class_sets", ["instructor_id"], name: "index_gx_class_sets_on_instructor_id", using: :btree
  add_index "gx_class_sets", ["studio_id"], name: "index_gx_class_sets_on_studio_id", using: :btree

  create_table "gx_class_tracks", force: true do |t|
    t.integer  "gx_class_id"
    t.integer  "track_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gx_class_tracks", ["gx_class_id"], name: "index_gx_class_tracks_on_gx_class_id", using: :btree
  add_index "gx_class_tracks", ["track_id"], name: "index_gx_class_tracks_on_track_id", using: :btree

  create_table "gx_classes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gx_classes", ["category_id"], name: "index_gx_classes_on_category_id", using: :btree

  create_table "reservations", force: true do |t|
    t.integer  "gx_class_set_id"
    t.integer  "member_id"
    t.integer  "member_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reservations", ["gx_class_set_id"], name: "index_reservations_on_gx_class_set_id", using: :btree
  add_index "reservations", ["member_id"], name: "index_reservations_on_member_id", using: :btree

  create_table "schedule_changes", force: true do |t|
    t.integer  "gx_class_set_id"
    t.date     "effective_date"
    t.integer  "studio_id"
    t.integer  "instructor_id"
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "canceled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedule_changes", ["gx_class_set_id", "effective_date"], name: "index_schedule_changes_on_gx_class_set_id_and_effective_date", unique: true, using: :btree

  create_table "studios", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "club_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "studios", ["club_id"], name: "index_studios_on_club_id", using: :btree

  create_table "tracks", force: true do |t|
    t.string   "short"
    t.string   "long"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "approved"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
