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

ActiveRecord::Schema.define(version: 20190718031900) do

  create_table "answers", force: :cascade do |t|
    t.string "option"
    t.boolean "is_true", default: false
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "exam_questions", force: :cascade do |t|
    t.integer "question_id"
    t.integer "exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_exam_questions_on_exam_id"
    t.index ["question_id"], name: "index_exam_questions_on_question_id"
  end

  create_table "exams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "time_for_exam"
    t.index ["user_id"], name: "index_exams_on_user_id"
  end

  create_table "log_answers", force: :cascade do |t|
    t.string "option"
    t.boolean "is_true", default: false
    t.integer "log_question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["log_question_id"], name: "index_log_answers_on_log_question_id"
  end

  create_table "log_exams", force: :cascade do |t|
    t.string "name", null: false
    t.integer "score", default: 0
    t.integer "teacher_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.integer "exam_id"
    t.index ["exam_id"], name: "index_log_exams_on_exam_id"
    t.index ["user_id"], name: "index_log_exams_on_user_id"
  end

  create_table "log_questions", force: :cascade do |t|
    t.text "content"
    t.string "subject_name"
    t.integer "log_exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["log_exam_id"], name: "index_log_questions_on_log_exam_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subject_id"
    t.index ["subject_id"], name: "index_questions_on_subject_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.integer "role"
    t.string "gender"
    t.string "avatar"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
