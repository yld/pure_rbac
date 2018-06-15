# frozen_string_literal: true

FactoryBot.define do
  factory :pure_rbac_permission, class: 'PureRbac::Permission' do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentences }
  end
end
