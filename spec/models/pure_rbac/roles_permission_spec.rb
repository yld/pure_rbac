# frozen_string_literal: true

require 'rails_helper'

module PureRbac
  RSpec.describe RolesPermission, type: :model do
    it { is_expected.to belong_to(:role) }
    it { is_expected.to belong_to(:permission) }
    it { is_expected.to have_db_index(%i[role_id permission_id]).unique(true) }
  end
end
