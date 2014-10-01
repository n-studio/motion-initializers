# -*- encoding: utf-8 -*-
VERSION = "0.0.1"

Gem::Specification.new do |spec|
  spec.name          = "motion-initializers"
  spec.version       = VERSION
  spec.authors       = ["Matthew Nguyen"]
  spec.email         = ["contact@n-studio.fr"]
  spec.description   = %q{TODO: Add swift-like syntax to RubyMotion}
  spec.summary       = %q{TODO: Add swift-like syntax to RubyMotion}
  spec.homepage      = "https://github.com/n-studio/motion-initializers"
  spec.license       = "BSD"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
