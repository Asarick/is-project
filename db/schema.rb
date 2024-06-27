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

ActiveRecord::Schema[7.1].define(version: 2024_06_27_080839) do
  create_table "crops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurance_packages", force: :cascade do |t|
    t.string "name"
    t.decimal "base_premium"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.integer "farmer_id", null: false
    t.integer "crop_id", null: false
    t.integer "insurance_package_id", null: false
    t.integer "premium_type_id", null: false
    t.decimal "acreage", null: false
    t.decimal "total_premium", null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.string "policy_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crop_id"], name: "index_insurances_on_crop_id"
    t.index ["farmer_id"], name: "index_insurances_on_farmer_id"
    t.index ["insurance_package_id"], name: "index_insurances_on_insurance_package_id"
    t.index ["policy_number"], name: "index_insurances_on_policy_number", unique: true
    t.index ["premium_type_id"], name: "index_insurances_on_premium_type_id"
  end

  create_table "premium_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "insurances", "crops"
  add_foreign_key "insurances", "farmers"
  add_foreign_key "insurances", "insurance_packages"
  add_foreign_key "insurances", "premium_types"
end
