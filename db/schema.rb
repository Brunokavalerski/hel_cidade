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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20220317162711) do

  create_table "bairros", :force => true do |t|
    t.string   "nome",       :limit => 20, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "cidade_id"
  end

  create_table "ceps", :force => true do |t|
    t.integer  "cep",                      :null => false
    t.string   "logradouro", :limit => 20, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "bairro_id"
  end

  create_table "cidades", :force => true do |t|
    t.string   "nome",       :limit => 20, :null => false
    t.integer  "habitantes"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "estado_id"
  end

  create_table "estados", :force => true do |t|
    t.string   "nome",       :limit => 20, :null => false
    t.string   "sigla",      :limit => 2,  :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "paise_id"
  end

  create_table "paises", :force => true do |t|
    t.string   "nome",       :limit => 20, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
