# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'john_vaughn_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "john_vaughn_view_tool"
  spec.version       = JohnVaughnViewTool::VERSION
  spec.authors       = ["John Vaughn"]
  spec.email         = ["johnjvaughn@gmail.com"]

  spec.summary       = %q{View-specific methods for my apps}
  spec.description   = %q{Provides HTML data for Rails apps}
  spec.homepage      = "http://johnjvaughn.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
