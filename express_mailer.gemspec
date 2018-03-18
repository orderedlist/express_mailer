# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "express_mailer/version"

Gem::Specification.new do |spec|
  spec.name          = "express_mailer"
  spec.version       = ExpressMailer::VERSION
  spec.authors       = ["Steve Smith"]
  spec.email         = ["steve@orderedlist.com"]

  spec.summary       = %q{An easy way to send yourself or your team members nice looking emails about things that happen in your rails application.}
  spec.description   = %q{ExpressMailer is intended to be a quick and easy way to send yourself or your team members nice looking emails about things that happen in your rails application. No need for creating a new Mailer, copy views, wade through email HTML, or any of that. Just tell ExpressMailer a few things about what you want to send, and it makes a pre-designed ActionMailer object you can manipulate or deliver.}
  spec.homepage      = "https://github.com/orderedlist/express_mailer"
  spec.license       = "MIT"

  spec.files            = Dir["{app,config,db,lib}/**/*", "LICENCE.txt", "Rakefile", "README.md"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rails", "~> 5.1"
  spec.add_development_dependency "sqlite3", "~> 1.3"
end
