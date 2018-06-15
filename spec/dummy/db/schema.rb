# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_180_603_001_227) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'pgcrypto'
  enable_extension 'plpgsql'
  enable_extension 'uuid-ossp'

  create_table 'pure_rbac_permissions', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'name', null: false
    t.text 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['name'], name: 'index_pure_rbac_permissions_on_name', unique: true
  end

  create_table 'pure_rbac_roles', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'name', null: false
    t.text 'description'
    t.uuid 'parent_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['name'], name: 'index_pure_rbac_roles_on_name', unique: true
  end

  create_table 'pure_rbac_roles_permissions', force: :cascade do |t|
    t.uuid 'role_id', null: false
    t.uuid 'permission_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[role_id permission_id], name: 'index_pure_rbac_roles_permissions_on_role_id_and_permission_id', unique: true
  end

  add_foreign_key 'pure_rbac_roles_permissions', 'pure_rbac_permissions', column: 'permission_id'
  add_foreign_key 'pure_rbac_roles_permissions', 'pure_rbac_roles', column: 'role_id'
end
