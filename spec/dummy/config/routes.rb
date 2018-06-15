# frozen_string_literal: true

Rails.application.routes.draw do
  mount PureRbac::Engine => '/pure_rbac'
end
