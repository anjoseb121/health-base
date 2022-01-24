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

ActiveRecord::Schema.define(version: 2022_01_24_154920) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_categories_on_name"
  end

  create_table "product_states", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "state_id", null: false
    t.integer "minimum_age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_states_on_product_id"
    t.index ["state_id"], name: "index_product_states_on_state_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "ndc"
    t.integer "qty"
    t.decimal "price"
    t.text "instructions"
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["ndc"], name: "index_products_on_ndc"
  end

  create_table "states", force: :cascade do |t|
    t.string "full_name"
    t.string "abbreviation"
    t.boolean "service_offered"
    t.integer "minimum_age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["abbreviation"], name: "index_states_on_abbreviation"
  end

  add_foreign_key "product_states", "products"
  add_foreign_key "product_states", "states"
  add_foreign_key "products", "categories"
end
