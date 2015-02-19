$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'simple_uploader/version'

Gem::Specification.new do |spec|
  # Project
  spec.name        = 'simple_uploader'
  spec.version     = SimpleUploader::VERSION
  spec.licenses    = ['MIT']
  spec.platform    = Gem::Platform::RUBY
  spec.homepage    = 'http://simple-uploader.nacyot.com'
  spec.summary     = 'Simple Image Upload Server'
  spec.description = 'Image upload server for inline attachment'

  # Requirement
  spec.required_ruby_version = '>= 2.0.0'
  
  # Author
  spec.authors     = ['Daekwon Kim']
  spec.email       = ['propellerheaven@gmail.com']

  # Files
  all_files = `git ls-files -z`.split("\x0")
  spec.files = all_files.grep(%r{^(bin|lib)/})
  spec.executables = all_files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  
  # Dependency
  spec.add_dependency('sinatra-contrib', '~>1')
  spec.add_dependency('sinatra', '~>1')
  spec.add_dependency('carrierwave', '~>0')
  spec.add_dependency('fog', '~>1')
  spec.add_dependency('rack-cors', '~>0')
  spec.add_dependency('json', '~>1')
  spec.add_dependency('slop', '~>4')
  spec.add_development_dependency('dotenv', '~>0')
end
