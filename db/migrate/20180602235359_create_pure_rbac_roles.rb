# frozen_string_literal: true

class CreatePureRbacRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :pure_rbac_roles do |t|
      t.string :name, null: false
      t.text :description
      t.uuid :parent_id, null: true

      t.timestamps
    end
    add_index :pure_rbac_roles, :name, unique: true
  end
end
