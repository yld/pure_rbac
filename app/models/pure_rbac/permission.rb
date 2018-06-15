# frozen_string_literal: true

module PureRbac
  class Permission < ApplicationRecord
    has_many :roles_permissions, dependent: :delete_all, inverse_of: :permission
    has_many :roles, through: :role_permissions, class_name: 'PureRbac::Role'

    validates :name, presence: true, uniqueness: true
  end
end
