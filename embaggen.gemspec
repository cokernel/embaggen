lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "semver"

Gem::Specification.new do |spec|
  spec.name = "embaggen"
  spec.version = SemVer.find.format "%M.%m.%p"
  spec.summary = "Embaggen - bag and tag with the BagIt library"
  spec.description = "Bag and tag with the BagIt library" 
  spec.email = "m.slone@gmail.com"
  spec.homepage = "http://github.com/uklibraries/embaggen"
  spec.authors = ["Michael Slone"]
  spec.license = "MIT"

  spec.add_dependency 'bagit'
  spec.add_dependency 'semver'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'redgreen'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'ZenTest'

  spec.files = `git ls-files`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end


