# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
Gem::Specification.new do |spec|
  spec.name          = 'janky-slack-custom'
  spec.version       = '0.1.1'
  spec.authors       = ['Jose Luis Salas']
  spec.email         = ['joseluis@flywire.com']
  spec.summary       = 'Custom slack chat service adapter for Janky.'
  spec.description   = 'Send Janky build notifications to your Slack rooms.'
  spec.homepage      = 'http://github.com/peertransfer/janky-slack-custom'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'janky', '~> 0.13.0.pre1'
  spec.add_development_dependency 'slack.rb', '~> 0.0.6'
end
