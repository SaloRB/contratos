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

ActiveRecord::Schema.define(version: 20180902182948) do

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
    t.integer "tipo_entidad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_entidad_id"], name: "index_entidades_on_tipo_entidad_id"
  end

  create_table "servicios", force: :cascade do |t|
    t.string "nombre"
    t.integer "tipo_servicio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_servicio_id"], name: "index_servicios_on_tipo_servicio_id"
  end

  create_table "tipo_entidades", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_servicios", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
