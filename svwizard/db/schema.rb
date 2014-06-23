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

ActiveRecord::Schema.define(version: 20140622193356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignment_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignments", force: true do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.float    "hours"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["task_id"], name: "index_assignments_on_task_id", using: :btree
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id", using: :btree

  create_table "conference_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conferences", force: true do |t|
    t.string   "name"
    t.string   "short_name"
    t.integer  "year"
    t.string   "email"
    t.integer  "volunteers"
    t.integer  "volunteer_hours"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "bid_day"
    t.integer  "status"
    t.boolean  "maintenance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollment_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", force: true do |t|
    t.integer  "conference_id"
    t.integer  "user_id"
    t.integer  "enrollment_status_id"
    t.integer  "lottery"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrollments", ["conference_id"], name: "index_enrollments_on_conference_id", using: :btree
  add_index "enrollments", ["enrollment_status_id"], name: "index_enrollments_on_enrollment_status_id", using: :btree
  add_index "enrollments", ["user_id"], name: "index_enrollments_on_user_id", using: :btree

  create_table "locations", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.integer  "conference_id"
    t.string   "name"
    t.text     "description"
    t.integer  "location_id"
    t.integer  "day"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "slots"
    t.float    "hours"
    t.integer  "priority"
    t.boolean  "invisible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "available"
  end

  add_index "tasks", ["conference_id"], name: "index_tasks_on_conference_id", using: :btree
  add_index "tasks", ["location_id"], name: "index_tasks_on_location_id", using: :btree

  create_table "tickets", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tickets", ["user_id"], name: "index_tickets_on_user_id", using: :btree

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
