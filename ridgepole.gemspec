# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ridgepole/version'

Gem::Specification.new do |spec|
  spec.name          = 'ridgepole'
  spec.version       = Ridgepole::VERSION
  spec.authors       = ['Genki Sugawara']
  spec.email         = ['sugawara@cookpad.com']
  spec.summary       = %q{Ridgepole is a tool to manage DB schema.}
  spec.description   = %q{Ridgepole is a tool to manage DB schema. It defines DB schema using Rails DSL, and updates DB schema according to DSL.}
  spec.homepage      = 'http://ridgepole.codenize.tools/'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord', '~> 4.2.0'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '>= 3.0.0'
  spec.add_development_dependency 'mysql2'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'activerecord-mysql-unsigned', '~> 0.3.1'
  spec.add_development_dependency 'foreigner', '<= 1.7.1'
  spec.add_development_dependency 'activerecord-mysql-pkdump', '>= 0.1.0'
  spec.add_development_dependency 'migration_comments'
  spec.add_development_dependency 'activerecord-mysql-awesome', '>= 0.0.3'
end
