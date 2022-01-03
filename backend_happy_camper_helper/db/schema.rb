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

ActiveRecord::Schema.define(version: 2022_01_03_205048) do

  create_table "cart", force: :cascade do |t|
    t.string "shopping_url"
    t.integer "item_id"
  end

  create_table "item", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "item_id"
    t.integer "weather_id"
    t.integer "cart_id"
    t.index ["cart_id"], name: "index_item_on_cart_id"
    t.index ["weather_id"], name: "index_item_on_weather_id"
  end

  create_table "weather", force: :cascade do |t|
    t.string "season_name"
    t.integer "degree"
  end

end
