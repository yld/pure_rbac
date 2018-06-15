# frozen_string_literal: true

module PureRbac
  class Role < ApplicationRecord
    has_many :roles_permissions, dependent: :delete_all, inverse_of: :role
    has_many :permissions, through: :role_permissions, class_name: 'PureRbac::Permission'

    validates :name, presence: true, uniqueness: true
  end
end
