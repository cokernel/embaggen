require 'semver'

EMBAGGEN_SPEC = Gem::Specification.new do |spec|
  spec.name = "embaggen"
  spec.version = SemVer.find.format '%M.%m.%p'
  spec.summary = "Embaggen - bag and tag with the BagIt library"
  spec.description = "Bag and tag with the BagIt library" 
  spec.email = "m.slone@gmail.com"
  spec.homepage = 'http://github.com/cokernel/embaggen'
  spec.authors = ["Michael Slone"]

  spec.add_dependency 'bagit'

  spec.files = %w(README.md LICENSE.txt embaggen.gemspec) + Dir["lib/**/*.rb"] + Dir["spec/**/*.rb"]
end


