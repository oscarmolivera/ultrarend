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

ActiveRecord::Schema.define(version: 2019_10_08_171839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branch_offices", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_branch_offices_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "federal_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_departments_on_company_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.date "expense_date"
    t.string "provider_utr"
    t.string "document_type"
    t.string "document_num"
    t.string "concept"
    t.string "observation"
    t.float "net_cost"
    t.float "excent_amount"
    t.float "iva_tax"
    t.float "other_tax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "rendicions_id"
    t.index ["rendicions_id"], name: "index_expenses_on_rendicions_id"
  end

  create_table "rendicions", force: :cascade do |t|
    t.string "glosa_id"
    t.string "description"
    t.date "request_date"
    t.string "status_id"
    t.date "aproved_date"
    t.float "request_amount"
    t.float "approved_amount"
    t.string "resolution"
    t.string "observations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "jefe_area_id", limit: 50
    t.index ["user_id"], name: "index_rendicions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "departments_id"
    t.bigint "branch_offices_id"
    t.index ["branch_offices_id"], name: "index_users_on_branch_offices_id"
    t.index ["departments_id"], name: "index_users_on_departments_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["type", "email"], name: "index_users_on_type_and_email"
  end

  add_foreign_key "expenses", "rendicions", column: "rendicions_id"
  add_foreign_key "rendicions", "users"
  add_foreign_key "users", "branch_offices", column: "branch_offices_id"
  add_foreign_key "users", "departments", column: "departments_id"
end
