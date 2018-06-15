# frozen_string_literal: true

FactoryBot.define do
  factory :pure_rbac_role, class: 'PureRbac::Role' do
    name { Faker::Lorem.word }
    description { Faker::Lorem.sentences }
    parent_id ''
  end
end
