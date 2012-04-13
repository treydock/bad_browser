# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bad_browser/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Trey Dockendorf"]
  gem.email         = ["treydock@gmail.com"]
  gem.description   = %{'Unsupported browser' warning to IE users with Chrome Frame install link, for Rails (>= 3.1)}
  gem.summary       = %{'Unsupported browser' warning to IE users with Chrome Frame install link, for Rails (>= 3.1)}
  gem.homepage      = "https://github.com/treydock/bad_browser"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "bad_browser"
  gem.require_paths = ["lib"]
  gem.version       = BadBrowser::VERSION
  
  gem.add_dependency "rails", "~> 3.1.0"
  gem.add_dependency "activesupport", "~> 3.1.0"
  
end
