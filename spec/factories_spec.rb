require 'spec_helper'

# Patch for FactoryBot::Linter. Clean Database before each factory if strategy is :create
class FactoryBot::Linter
  private
  # access to original method.
  alias_method :original_lint_factory_and_traits, :lint_factory_and_traits

  def lint_factory_and_traits(factory)
    begin
      DatabaseCleaner.start if factory_strategy == :create
      original_lint_factory_and_traits(factory)
    ensure
      DatabaseCleaner.clean if factory_strategy == :create
    end
  end
end

describe 'FactoryBot Linter' do
  [:build_stubbed, :build, :create].each do |strategy|
    it "#{strategy}" do
      DatabaseCleaner.cleaning do
        FactoryBot::Linter.new(FactoryBot.factories, :factory_and_traits, strategy).lint!
      end
    end
  end
end
