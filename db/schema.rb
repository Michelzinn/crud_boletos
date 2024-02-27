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

ActiveRecord::Schema[7.1].define(version: 2024_02_17_180804) do
  create_table "expenses", force: :cascade do |t|
    t.string "title"
    t.integer "amount"
    t.integer "paid_by_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paid_by_id"], name: "index_expenses_on_paid_by_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_people_on_group_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "title"
    t.integer "amount"
    t.integer "paid_by_id", null: false
    t.integer "paid_for_id", null: false
    t.integer "expense_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expense_id"], name: "index_transactions_on_expense_id"
    t.index ["paid_by_id"], name: "index_transactions_on_paid_by_id"
    t.index ["paid_for_id"], name: "index_transactions_on_paid_for_id"
  end

  add_foreign_key "expenses", "people", column: "paid_by_id"
  add_foreign_key "people", "groups"
  add_foreign_key "transactions", "expenses"
  add_foreign_key "transactions", "people", column: "paid_by_id"
  add_foreign_key "transactions", "people", column: "paid_for_id"
end
