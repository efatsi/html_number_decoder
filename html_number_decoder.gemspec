# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "html_number_decoder/version"

Gem::Specification.new do |spec|
  spec.name          = "html_number_decoder"
  spec.version       = HtmlNumberDecoder::VERSION
  spec.authors       = ["Eli Fatsi"]
  spec.email         = ["eli.fatsi@viget.com"]

  spec.summary       = "Decode HTML Numbers into characters"
  spec.homepage      = "https://github.com/efatsi/html_number_decoder"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
