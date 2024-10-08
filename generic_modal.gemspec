# frozen_string_literal: true

require_relative "lib/generic_modal/version"

Gem::Specification.new do |spec|
  spec.name = "generic_modal"
  spec.version = GenericModal::VERSION
  spec.authors = ["Maxime Castillo"]
  spec.email = ["maxime@hop3team.com"]

  spec.summary = "Example gem containing JS and SCSS Modale"
  # spec.description = "TODO: Write a longer description or delete this line."
  spec.homepage = "https://github.com/MaximeCastillo/generic_modal.git"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/MaximeCastillo/generic_modal.git"
  spec.metadata["changelog_uri"] = "https://github.com/MaximeCastillo/generic_modal.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile]) ||
        f.end_with?('.gem')
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  spec.add_runtime_dependency 'autoprefixer-rails', '~> 10.2.5'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
