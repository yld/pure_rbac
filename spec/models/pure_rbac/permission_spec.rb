# frozen_string_literal: true

require 'rails_helper'

module PureRbac
  RSpec.describe Permission, type: :model do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to have_db_index(:name).unique(true) }
    it { is_expected.to have_many(:roles_permissions) }
    it { is_expected.to have_many(:roles) }

    context 'when a permission exists' do
      subject { create(:pure_rbac_permission) }

      it { is_expected.to validate_uniqueness_of(:name) }
    end
  end
end
