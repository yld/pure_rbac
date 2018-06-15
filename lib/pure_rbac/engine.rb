# frozen_string_literal: true

module PureRbac
  class Engine < ::Rails::Engine
    isolate_namespace PureRbac
    config.generators do |generator|
      generator.test_framework :rspec
      generator.fixture_replacement :factory_bot, dir: 'spec/factories'
      generator.orm :active_record, primary_key_type: :uuid
    end
    # config.generators.api_only = true
  end
end
