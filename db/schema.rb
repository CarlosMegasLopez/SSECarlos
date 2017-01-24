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

ActiveRecord::Schema.define(version: 20161121025022) do

  create_table "associations", force: :cascade do |t|
    t.string   "nombre"
    t.string   "contacto"
    t.string   "telefono"
    t.string   "correo_electronico"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "careers", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "generations", force: :cascade do |t|
    t.integer  "career_id"
    t.string   "descripcion_generacion"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["career_id"], name: "index_generations_on_career_id"
  end

  create_table "graduates", force: :cascade do |t|
    t.integer  "career_id"
    t.string   "nombre_egresado"
    t.string   "apellido_paterno_egresado"
    t.string   "apellido_materno_egresado"
    t.string   "sexo_egresado"
    t.text     "colonia_egresado"
    t.text     "calle_egresado"
    t.string   "codigo_postal_egresado"
    t.string   "celular_egresado"
    t.string   "otro_telefono_egresado"
    t.string   "correo_electronico_egresado"
    t.string   "status_egresado"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["career_id"], name: "index_graduates_on_career_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
