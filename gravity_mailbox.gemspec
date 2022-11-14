# frozen_string_literal: true

require_relative 'lib/gravity_mailbox/version'

Gem::Specification.new do |spec|
  spec.name          = 'gravity_mailbox'
  spec.version       = GravityMailbox::VERSION
  spec.authors       = ['Jean-Francis Bastien']
  spec.email         = ['jfbastien@petalmd.com']

  spec.summary       = 'Write a short summary, because RubyGems requires one.'
  spec.description   = 'Write a longer description or delete this line.'
  spec.homepage      = 'https://github.com/petalmd/gravity_mailbox'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.6.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/petalmd/gravity_mailbox'
  spec.metadata['changelog_uri'] = 'https://github.com/petalmd/gravity_mailbox/blob/main/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'actionmailer', '>= 5.2'
  spec.add_dependency 'railties', '>= 5.2'
  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.metadata['rubygems_mfa_required'] = 'true'
end
