# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rails_sandbox_jasmine/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Rodrigo Rosenfeld Rosas"]
  gem.email         = ["rr.rosas@gmail.com"]
  gem.description   = %q{Add Jasmine spec runner to Rails}
  gem.summary       = %q{Use rails-sandbox-assets to serve the assets}
  gem.homepage      = "http://github.com/rosenfeld/rails_sandbox_jasmine"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rails_sandbox_jasmine"
  gem.require_paths = ["lib"]
  gem.version       = RailsSandboxJasmine::VERSION

  gem.add_dependency 'rails-sandbox-assets', '>= 0.0.2'
end
