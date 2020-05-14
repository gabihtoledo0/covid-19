# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_14_002747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "possui_doenca", force: :cascade do |t|
    t.string "nenhuma"
    t.string "idoso"
    t.string "asma"
    t.string "cancer"
    t.string "diabetico"
    t.string "doe_cardio"
    t.string "hipertensao"
    t.string "fumante"
    t.string "gestante"
    t.string "obesidade"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "last_name"
    t.string "data_nasc"
    t.string "cep"
    t.string "estado"
    t.string "cidade"
    t.string "bairro"
    t.string "rua"
    t.boolean "possui_crianca"
    t.boolean "possui_risco"
    t.boolean "nenhuma"
    t.boolean "idoso"
    t.boolean "asma"
    t.boolean "cancer"
    t.boolean "diabetico"
    t.boolean "doe_cardio"
    t.boolean "hipertensao"
    t.boolean "fumante"
    t.boolean "gestante"
    t.boolean "obesidade"
    t.string "idade"
    t.integer "idadee"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
