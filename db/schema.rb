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

ActiveRecord::Schema.define(version: 20150522092315) do

  create_table "answers", force: :cascade do |t|
    t.string   "a"
    t.string   "b"
    t.string   "c"
    t.string   "d"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapters", force: :cascade do |t|
    t.string   "chapter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "scenario_id"
    t.text     "question"
    t.integer  "answer_id"
    t.string   "correct_answer"
    t.integer  "chapter_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "scenarios", force: :cascade do |t|
    t.text     "scenario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
