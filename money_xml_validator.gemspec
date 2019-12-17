lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "money_xml_validator"
  spec.version       = '0.0.2'
  spec.authors       = ["Premysl Donat"]
  spec.email         = ["pdonat@seznam.cz"]

  spec.summary       = 'Simple gem with XSD validator for Money XML'
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/Masa331/money_xml_validator"
  spec.license       = "MIT"

  spec.files         = `git ls-files --recurse-submodules -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'nokogiri'
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
