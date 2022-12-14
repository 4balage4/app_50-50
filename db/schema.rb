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

ActiveRecord::Schema[7.0].define(version: 2022_12_06_145026) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "address"
    t.bigint "household_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.index ["household_id"], name: "index_contacts_on_household_id"
  end

  create_table "households", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kids", force: :cascade do |t|
    t.string "name"
    t.bigint "household_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_id"], name: "index_kids_on_household_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.integer "points"
    t.interval "duration"
    t.string "type"
    t.string "comments"
    t.date "due_date"
    t.bigint "kid_id"
    t.boolean "status", default: false
    t.bigint "assigned_to_id"
    t.bigint "category_id", null: false
    t.bigint "user_id", null: false
    t.bigint "household_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "contact_id"
    t.boolean "done", default: false
    t.index ["assigned_to_id"], name: "index_tasks_on_assigned_to_id"
    t.index ["category_id"], name: "index_tasks_on_category_id"
    t.index ["contact_id"], name: "index_tasks_on_contact_id"
    t.index ["household_id"], name: "index_tasks_on_household_id"
    t.index ["kid_id"], name: "index_tasks_on_kid_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "templates", force: :cascade do |t|
    t.string "name"
    t.integer "points"
    t.interval "duration"
    t.string "type"
    t.string "comments"
    t.bigint "category_id", null: false
    t.bigint "user_id", null: false
    t.bigint "household_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_templates_on_category_id"
    t.index ["household_id"], name: "index_templates_on_household_id"
    t.index ["user_id"], name: "index_templates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.bigint "household_id"
    t.string "color"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["household_id"], name: "index_users_on_household_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contacts", "households"
  add_foreign_key "kids", "households"
  add_foreign_key "tasks", "categories"
  add_foreign_key "tasks", "contacts"
  add_foreign_key "tasks", "households"
  add_foreign_key "tasks", "kids"
  add_foreign_key "tasks", "users"
  add_foreign_key "tasks", "users", column: "assigned_to_id"
  add_foreign_key "templates", "categories"
  add_foreign_key "templates", "households"
  add_foreign_key "templates", "users"
  add_foreign_key "users", "households"
end
