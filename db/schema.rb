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

ActiveRecord::Schema.define(version: 20170404111710) do

  create_table "cars", force: :cascade do |t|
    t.string   "make"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_exercises", id: false, force: :cascade do |t|
    t.integer "equipment_id"
    t.integer "exercise_id"
    t.index ["equipment_id", "exercise_id"], name: "index_equipment_exercises_on_equipment_id_and_exercise_id"
  end

  create_table "etypes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etypes_exercises", id: false, force: :cascade do |t|
    t.integer "etype_id"
    t.integer "exercise_id"
    t.index ["etype_id", "exercise_id"], name: "index_etypes_exercises_on_etype_id_and_exercise_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "exercises_muscles", id: false, force: :cascade do |t|
    t.integer "muscle_id"
    t.integer "exercise_id"
    t.index ["muscle_id", "exercise_id"], name: "index_exercises_muscles_on_muscle_id_and_exercise_id"
  end

  create_table "measurements", force: :cascade do |t|
    t.string   "user_id"
    t.date     "date"
    t.string   "weight"
    t.string   "weight_unit"
    t.string   "fat_pct"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "muscles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routines", force: :cascade do |t|
    t.string   "user_id"
    t.string   "name"
    t.date     "date"
    t.string   "weekly_frequency"
    t.date     "days"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "user_id"
    t.string   "name"
    t.date     "date"
    t.string   "lifted_weight"
    t.string   "weight_unit"
    t.string   "repetitions"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
