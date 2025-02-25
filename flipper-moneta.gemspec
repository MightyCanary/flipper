require File.expand_path('lib/flipper/version', __dir__)

flipper_moneta_files = lambda do |file|
  file =~ /moneta/
end

Gem::Specification.new do |gem|
  gem.authors       = ['John Nunemaker']
  gem.email         = ['nunemaker@gmail.com']
  gem.summary       = 'Moneta adapter for Flipper'
  gem.license       = 'MIT'
  gem.homepage      = 'https://github.com/jnunemaker/flipper'

  gem.files         = `git ls-files`.split("\n").select(&flipper_moneta_files) + ['lib/flipper/version.rb']
  gem.name          = 'flipper-moneta'
  gem.require_paths = ['lib']
  gem.version       = Flipper::VERSION

  gem.add_dependency 'flipper', "~> #{Flipper::VERSION}"
  gem.add_dependency 'moneta', '>= 0.7.0', '< 1.6'
  gem.metadata['rubygems_mfa_required'] = 'true'
end
