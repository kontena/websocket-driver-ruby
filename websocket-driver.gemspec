Gem::Specification.new do |s|
  s.name              = 'websocket-driver-kontena'
  s.version           = '0.6.5'
  s.summary           = 'WebSocket protocol handler with pluggable I/O (without native c-extension)'
  s.author            = 'James Coglan'
  s.email             = 'jcoglan@gmail.com'
  s.homepage          = 'http://github.com/faye/websocket-driver-ruby'
  s.license           = 'MIT'

  s.extra_rdoc_files  = %w[README.md]
  s.rdoc_options      = %w[--main README.md --markup markdown]
  s.require_paths     = %w[lib]

  files = %w[README.md LICENSE.md CHANGELOG.md] +
          Dir.glob('ext/**/*.{c,java,rb}') +
          Dir.glob('{examples,lib}/**/*.rb')

  if RUBY_PLATFORM =~ /java/
    s.platform = 'java'
    files << 'lib/websocket_mask.jar'
  end

  s.files = files

  s.add_dependency 'websocket-extensions', '>= 0.1.0'

  s.add_development_dependency 'eventmachine'
  s.add_development_dependency 'permessage_deflate'
  s.add_development_dependency 'rake-compiler', '~> 0.8.0'
  s.add_development_dependency 'rspec'
end
