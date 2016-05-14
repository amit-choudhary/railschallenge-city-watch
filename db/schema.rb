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

ActiveRecord::Schema.define(version: 20160514082325) do

  create_table "emergencies", force: :cascade do |t|
    t.string   "code"
    t.integer  "fire_severity"
    t.integer  "police_severity"
    t.integer  "medical_severity"
    t.datetime "resolved_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "emergencies_responders", force: :cascade do |t|
    t.integer  "emergencies_id"
    t.integer  "responders_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "emergencies_responders", ["emergencies_id"], name: "index_emergencies_responders_on_emergencies_id"
  add_index "emergencies_responders", ["responders_id"], name: "index_emergencies_responders_on_responders_id"

  create_table "responders", force: :cascade do |t|
    t.string   "name"
    t.integer  "type"
    t.boolean  "on_duty",    default: false
    t.integer  "capacity"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "responders", ["type"], name: "index_responders_on_type"

end
