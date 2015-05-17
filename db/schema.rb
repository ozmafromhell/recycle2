# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150418213350) do

  create_table "alcances", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "comuna_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alcances", ["comuna_id"], name: "index_alcances_on_comuna_id"
  add_index "alcances", ["usuario_id"], name: "index_alcances_on_usuario_id"

  create_table "ciudads", force: true do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ciudads", ["region_id"], name: "index_ciudads_on_region_id"

  create_table "comunas", force: true do |t|
    t.string   "nombre"
    t.integer  "ciudad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comunas", ["ciudad_id"], name: "index_comunas_on_ciudad_id"

  create_table "estado_productos", force: true do |t|
    t.integer  "estado_id"
    t.integer  "oferta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estado_productos", ["estado_id"], name: "index_estado_productos_on_estado_id"
  add_index "estado_productos", ["oferta_id"], name: "index_estado_productos_on_oferta_id"

  create_table "estados", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "imagen_oferta", force: true do |t|
    t.integer  "imagen_id"
    t.integer  "oferta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imagen_oferta", ["imagen_id"], name: "index_imagen_oferta_on_imagen_id"
  add_index "imagen_oferta", ["oferta_id"], name: "index_imagen_oferta_on_oferta_id"

  create_table "imagens", force: true do |t|
    t.integer  "usuario_id"
    t.string   "dato"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "imagens", ["usuario_id"], name: "index_imagens_on_usuario_id"

  create_table "interes", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "oferta_id"
    t.text     "motivo"
    t.boolean  "dinero"
    t.boolean  "material"
    t.string   "otro"
    t.text     "mensaje"
    t.datetime "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "interes", ["oferta_id"], name: "index_interes_on_oferta_id"
  add_index "interes", ["usuario_id"], name: "index_interes_on_usuario_id"

  create_table "oferta", force: true do |t|
    t.string   "titulo"
    t.integer  "tipoResiduo_id"
    t.integer  "subtipoResiduo_id"
    t.date     "desde"
    t.date     "hasta"
    t.boolean  "transporte"
    t.time     "atencionDesde"
    t.time     "atencionHasta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "oferta", ["subtipoResiduo_id"], name: "index_oferta_on_subtipoResiduo_id"
  add_index "oferta", ["tipoResiduo_id"], name: "index_oferta_on_tipoResiduo_id"

  create_table "regions", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requieros", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "tipoResiduo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requieros", ["tipoResiduo_id"], name: "index_requieros_on_tipoResiduo_id"
  add_index "requieros", ["usuario_id"], name: "index_requieros_on_usuario_id"

  create_table "subtipo_residuos", force: true do |t|
    t.string   "nombre"
    t.integer  "tipoResiduo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subtipo_residuos", ["tipoResiduo_id"], name: "index_subtipo_residuos_on_tipoResiduo_id"

  create_table "tipo_residuos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nombre"
    t.string   "contrasena"
    t.string   "telefono"
    t.string   "correo"
    t.string   "direccion"
    t.string   "rol"
    t.date     "fecha_de_nacimiento"
    t.integer  "comuna_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["comuna_id"], name: "index_usuarios_on_comuna_id"

end
