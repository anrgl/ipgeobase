# frozen_string_literal: true

require_relative "lib/ipgeobase/version"

Gem::Specification.new do |spec|
  spec.name          = "ipgeobase"
  spec.version       = Ipgeobase::VERSION
  spec.authors       = ["Aynur Galimov"]
  spec.email         = ["anrgl@ya.ru"]

  spec.summary       = "ipgeobase gem show ip geo information."
  spec.description   = "ipgeobase gem show ip geo information."
  spec.homepage      = "https://github.com/anrg/ipgeobase"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://github.com/anrgl/ipgeobase"

  spec.metadata["homepage_uri"] = "https://github.com/anrg/ipgeobase"
  spec.metadata["source_code_uri"] = "https://github.com/anrg/ipgeobase"
  spec.metadata["changelog_uri"] = "https://github.com/anrg/ipgeobase/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
