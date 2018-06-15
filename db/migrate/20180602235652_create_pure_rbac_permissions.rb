# frozen_string_literal: true

class CreatePureRbacPermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :pure_rbac_permissions do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
    add_index :pure_rbac_permissions, :name, unique: true
  end
end
