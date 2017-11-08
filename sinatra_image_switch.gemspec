# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinatra_image_switch/version'

Gem::Specification.new do |spec|
  spec.name          = 'sinatra_image_switch'
  spec.version       = SinatraImageSwitch::VERSION
  spec.authors       = ['Eric Henderson']
  spec.email         = ['henderea@gmail.com']
  spec.summary       = %q{Create a page that switches between returning an image and returning an html page with the image in it}
  spec.description   = %q{When opened in the browser as a page, it will display the template you specify with the image placed in there.  When referenced in an image tag (or in some other context where it won't take html), it will only return the image itself, not an html page.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'sinatra', '~> 1.4'
end
