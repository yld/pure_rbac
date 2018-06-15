# frozen_string_literal: true

class CreatePureRbacRolePermissions < ActiveRecord::Migration[5.2]
  def change
    create_join_table(:pure_rbac_roles, :pure_rbac_permissions, table_name: :pure_rbac_roles_permissions, column_options: { null: false }, options: { id: false })
    # create_table :pure_rbac_roles_permissions do |t|
    #   t.references :pure_rbac_roles, null: false
    #   t.uuid :permission_id, null: false

    #   t.timestamps
    # end

    add_index :pure_rbac_roles_permissions, %i[role_id permission_id], unique: true

    add_foreign_key :pure_rbac_roles_permissions, :pure_rbac_roles, column: :role_id
    add_foreign_key :pure_rbac_roles_permissions, :pure_rbac_permissions, column: :permission_id
  end
end
