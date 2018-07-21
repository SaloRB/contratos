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

ActiveRecord::Schema.define(version: 20180721045158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entidades", force: :cascade do |t|
    t.string "nombre"
    t.string "rfc"
    t.string "curp"
    t.string "direccion"
    t.string "no_ext"
    t.string "no_int"
    t.string "delegacion"
    t.string "colonia"
    t.string "estado"
    t.string "pais"
    t.string "codigo_postal"
    t.string "telefono_1"
    t.string "telefono_2"
    t.string "telefono_3"
    t.string "email"
    t.string "contacto_1"
    t.string "contacto_2"
    t.bigint "tipo_entidad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_entidad_id"], name: "index_entidades_on_tipo_entidad_id"
  end

  create_table "tipo_entidades", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "entidades", "tipo_entidades"
end
