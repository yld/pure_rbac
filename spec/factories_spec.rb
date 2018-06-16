# frozen_string_literal: true

require 'spec_helper'

describe 'FactoryBot Linter' do
  %i[build_stubbed build create].each do |strategy|
    it "#{strategy} factories" do
      DatabaseCleaner.cleaning do
        FactoryBot.lint traits: true, strategy: strategy
      end
    end
  end
end
