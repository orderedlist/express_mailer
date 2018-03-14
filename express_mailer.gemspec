# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "express_mailer/version"

Gem::Specification.new do |spec|
  spec.name          = "express_mailer"
  spec.version       = ExpressMailer::VERSION
  spec.authors       = ["Steve Smith"]
  spec.email         = ["steve@orderedlist.com"]

  spec.summary       = %q{Send nice looking emails quickly}
  spec.description   = %q{Send nice looking emails quickly}
  spec.homepage      = "https://github.com/orderedlist/express_mailer"
  spec.license       = "MIT"

  spec.files            = Dir["{app,config,db,lib}/**/*", "LICENCE.txt", "Rakefile", "README.md"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rails", "~> 5.1.5"
  spec.add_development_dependency "sqlite3"
end
