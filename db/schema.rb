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

ActiveRecord::Schema.define(version: 20171012162614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "self_reflections", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.text "answer1", null: false
    t.text "answer2", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_self_reflections_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "passcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teammate_feedbacks", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "teammate_id", null: false
    t.text "answer1"
    t.text "answer2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_teammate_feedbacks_on_student_id"
    t.index ["teammate_id"], name: "index_teammate_feedbacks_on_teammate_id"
  end

  add_foreign_key "self_reflections", "students"
  add_foreign_key "teammate_feedbacks", "students"
  add_foreign_key "teammate_feedbacks", "students", column: "teammate_id"
end
