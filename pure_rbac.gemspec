# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'pure_rbac/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'pure_rbac'
  s.version     = PureRbac::VERSION
  s.authors     = ['Yves Le Douaron']
  s.email       = ['yves@finalcad.com']
  s.homepage    = 'https://gtihub.com/yld/pure_rbac'
  s.summary     = 'A pure RBAC implementation for RAILS and active record'
  s.description = 'Description of PureRbac.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.2.0'

  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'reek'
  s.add_development_dependency 'rspec-json_expectations'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop', '>= 0.53.0'
  s.add_development_dependency 'rubocop-rspec'
  s.add_development_dependency 'shoulda-matchers'

  s.add_development_dependency 'aruba'
end
