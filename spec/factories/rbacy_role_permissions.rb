# frozen_string_literal: true

FactoryBot.define do
  factory :pure_rbac_roles_permission, class: 'PureRbac::RolesPermission' do
    association :role, factory: :pure_rbac_role
    association :permission, factory: :pure_rbac_permission
  end
end
