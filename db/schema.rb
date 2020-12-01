# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_01_022607) do

  create_table "bicepstriceps1s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bicepstriceps2s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bicepstriceps3s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bicepstriceps4s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bicepstricepshome1s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bicepstricepshome2s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bicepstricepshome3s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bicepstricepshome4s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chest_triceps1s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chest_triceps_at_home1s", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chesttriceps2s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chesttriceps3s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chesttriceps4s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chesttricepshome1s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chesttricepshome2s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chesttricepshome3s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chesttricepshome4s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "latstraps1s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "latstraps2s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "latstraps3s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "latstraps4s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "latstrapshome1s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "latstrapshome2s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "latstrapshome3s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "latstrapshome4s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "legs1s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "legs2s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "legs3s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "legs4s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "legshome1s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "legshome2s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "legshome3s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "legshome4s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shouldersbiceps1s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shouldersbiceps2s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shouldersbiceps3s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shouldersbiceps4s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shouldersbicepshome1s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shouldersbicepshome2s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shouldersbicepshome3s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shouldersbicepshome4s", force: :cascade do |t|
    t.string "exercise"
    t.string "reps"
    t.integer "sets"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "benchpressPR"
    t.integer "deadliftPR"
    t.integer "squatPR"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
