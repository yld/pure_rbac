# frozen_string_literal: true

module PureRbac
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true
  end
end
