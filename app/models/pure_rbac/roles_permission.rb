# frozen_string_literal: true

module PureRbac
  class RolesPermission < ApplicationRecord
    belongs_to :role
    belongs_to :permission
    # validates :role_id, uniqueness: true, scope: :permission_id
  end
end
