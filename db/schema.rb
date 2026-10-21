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

ActiveRecord::Schema[7.1].define(version: 2026_10_21_083138) do
  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "city"
    t.string "industry"
    t.string "tech_stack"
    t.string "careers_url"
    t.string "source"
    t.integer "japanese_level", default: 0, null: false
    t.boolean "visa_sponsorship", default: false, null: false
    t.boolean "english_ok", default: false, null: false
    t.boolean "hires_juniors", default: false, null: false
    t.integer "remote_policy", default: 0, null: false
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hires_juniors"], name: "index_companies_on_hires_juniors"
    t.index ["visa_sponsorship"], name: "index_companies_on_visa_sponsorship"
  end

end
