# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_06_30_035139) do

  create_table "animal_care_groups", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "organization"
    t.string "email"
    t.string "encrypted_password"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "avatar_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "animals", charset: "utf8mb4", force: :cascade do |t|
    t.date "birthday"
    t.integer "height"
    t.integer "weight"
    t.string "gender"
    t.text "condition"
    t.string "picture"
    t.bigint "category_id", null: false
    t.bigint "animal_care_group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["animal_care_group_id"], name: "index_animals_on_animal_care_group_id"
    t.index ["category_id"], name: "index_animals_on_category_id"
  end

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "veterinarian_id"
    t.string "name", null: false
    t.string "image1", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["veterinarian_id"], name: "index_posts_on_veterinarian_id"
  end

  create_table "veterinarians", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "encrypted_password"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "avatar"
    t.integer "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "resume"
    t.string "license"
    t.date "available_date1"
    t.date "available_date2"
    t.date "available_date3"
    t.index ["email"], name: "index_veterinarians_on_email", unique: true
    t.index ["reset_password_token"], name: "index_veterinarians_on_reset_password_token", unique: true
  end

  add_foreign_key "animals", "animal_care_groups"
  add_foreign_key "animals", "categories"
  add_foreign_key "posts", "veterinarians"
end
