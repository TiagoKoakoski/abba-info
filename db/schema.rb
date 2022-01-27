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

ActiveRecord::Schema.define(version: 2022_01_27_150046) do

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

  create_table "departaments", force: :cascade do |t|
    t.string "name"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_departaments_on_company_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string "account"
    t.integer "company_id", null: false
    t.integer "departament_id", null: false
    t.integer "person_id", null: false
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_emails_on_company_id"
    t.index ["departament_id"], name: "index_emails_on_departament_id"
    t.index ["person_id"], name: "index_emails_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "branch_line"
    t.integer "company_id", null: false
    t.integer "departament_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_people_on_company_id"
    t.index ["departament_id"], name: "index_people_on_departament_id"
  end

  add_foreign_key "departaments", "companies"
  add_foreign_key "emails", "companies"
  add_foreign_key "emails", "departaments"
  add_foreign_key "emails", "people"
  add_foreign_key "people", "companies"
  add_foreign_key "people", "departaments"
end
