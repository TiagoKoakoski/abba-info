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

ActiveRecord::Schema.define(version: 2023_03_28_182653) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "postal_code"
    t.string "registration_number"
    t.string "address"
    t.string "district"
    t.string "city"
    t.string "state"
    t.string "fone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fantasy_name"
  end

  create_table "computer_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "computers", force: :cascade do |t|
    t.string "code"
    t.integer "company_id", null: false
    t.integer "departament_id", null: false
    t.integer "person_id", null: false
    t.integer "computer_type_id", null: false
    t.string "cpu"
    t.string "memory_type"
    t.integer "memory"
    t.string "mother_board"
    t.string "storage_type"
    t.integer "storage"
    t.integer "operating_system_id", null: false
    t.string "operating_system_key"
    t.string "office"
    t.string "gpu"
    t.string "mac_address"
    t.string "ip"
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "note"
    t.index ["company_id"], name: "index_computers_on_company_id"
    t.index ["computer_type_id"], name: "index_computers_on_computer_type_id"
    t.index ["departament_id"], name: "index_computers_on_departament_id"
    t.index ["operating_system_id"], name: "index_computers_on_operating_system_id"
    t.index ["person_id"], name: "index_computers_on_person_id"
  end

  create_table "departaments", force: :cascade do |t|
    t.string "name"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_departaments_on_company_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "model"
    t.string "ip"
    t.string "mac_address"
    t.string "place"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string "account"
    t.integer "company_id", null: false
    t.integer "departament_id", null: false
    t.integer "person_id", null: false
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password"
    t.index ["company_id"], name: "index_emails_on_company_id"
    t.index ["departament_id"], name: "index_emails_on_departament_id"
    t.index ["person_id"], name: "index_emails_on_person_id"
  end

  create_table "operating_systems", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "password_doors", force: :cascade do |t|
    t.integer "bottom"
    t.integer "top"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "branch_line"
    t.integer "company_id", null: false
    t.integer "departament_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "codename"
    t.string "image"
    t.integer "number"
    t.integer "state"
    t.index ["company_id"], name: "index_people_on_company_id"
    t.index ["departament_id"], name: "index_people_on_departament_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "computers", "companies"
  add_foreign_key "computers", "computer_types"
  add_foreign_key "computers", "departaments"
  add_foreign_key "computers", "operating_systems"
  add_foreign_key "computers", "people"
  add_foreign_key "departaments", "companies"
  add_foreign_key "emails", "companies"
  add_foreign_key "emails", "departaments"
  add_foreign_key "emails", "people"
  add_foreign_key "people", "companies"
  add_foreign_key "people", "departaments"
end
