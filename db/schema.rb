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

ActiveRecord::Schema.define(version: 2021_01_27_201237) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "dog_food_categories", force: :cascade do |t|
    t.integer "category_id"
    t.integer "food_option_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "weight"
    t.boolean "food_sensitivity"
    t.integer "user_id"
    t.integer "category_id"
  end

  create_table "food_options", force: :cascade do |t|
    t.integer "dog_food_category_id"
    t.boolean "small_puppy_sensitive"
    t.boolean "medium_puppy_sensitive"
    t.boolean "large_puppy_sensitive"
    t.boolean "extra_large_puppy_sensitive"
    t.boolean "small_young_adult_sensitive"
    t.boolean "medium_young_adult_sensitive"
    t.boolean "large_young_adult_sensitive"
    t.boolean "extra_large_young_adult_sensitive"
    t.boolean "small_adult_sensitive"
    t.boolean "medium_adult_sensitive"
    t.boolean "large_adult_sensitive"
    t.boolean "extra_large_adult_sensitive"
    t.boolean "small_senior_sensitive"
    t.boolean "medium_senior_sensitive"
    t.boolean "large_senior_sensitive"
    t.boolean "extra_large_senior_sensitive"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
  end

end
