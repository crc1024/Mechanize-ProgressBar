# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "mechanize-progressbar"
  spec.version       = File.read('VERSION')
  spec.authors       = ["kitamomonga"]
  spec.email         = ["kitamomonga@gmail.com"]
  spec.summary       = %q{Mechanize-Progressbar provides ProgressBar for Mechanize#get and Link#click. requires 'progressbar' gem.}
  spec.description   = %q{Mechanize-Progressbar shows ProgressBar when HTTP GET access of Mechanize(Mechanize#get, Page::Link#click, response of Form#submit). It requires 'progressbar' gem. HTTP POST is not supported.}
  spec.homepage      = "http://github.com/kitamomonga/mechanize-progressbar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "mechanize", ">= 1.0.0"
  spec.add_runtime_dependency "progressbar", ">= 0.9.0"

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "> 2.3.0"
  spec.add_development_dependency "bundler", "> 1.0.0"
  spec.add_development_dependency 'rdoc', '>= 2.4.2'

  spec.add_development_dependency 'webmock', '>= 1.6.1'

end
