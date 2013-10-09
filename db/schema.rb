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

ActiveRecord::Schema.define(:version => 20131009123648) do

  create_table "accounts", :force => true do |t|
    t.string   "desciption"
    t.string   "type"
    t.decimal  "initialbalance"
    t.string   "status"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "centro_de_custos", :force => true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lancamentos", :force => true do |t|
    t.string   "descricao",                                        :null => false
    t.decimal  "valor",              :precision => 2, :scale => 0, :null => false
    t.date     "date",                                             :null => false
    t.integer  "centro_de_custo_id"
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.integer  "account_id"
  end

  add_index "lancamentos", ["centro_de_custo_id"], :name => "index_lancamentos_on_centro_de_custo_id"

end
