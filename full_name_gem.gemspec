# frozen_string_literal: true

require_relative "lib/full_name_gem/version"

Gem::Specification.new do |spec|
  spec.name = "full_name_gem"
  spec.version = FullNameGem::VERSION
  spec.authors = ["Amit Gupta"]
  spec.email = ["amit.gupta@atharvasystem.com"]

  spec.summary = "This package will let you use full_name from the first_name and last_name field, fetch initial from the same field"
  spec.description = "Small experiment to launch a rails package, this package will helps in fetching full_name from the model containing first_name and last_name and also initials_name."
  spec.homepage = "https://github.com/amitgdigi/full_name_gem"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/amitgdigi/full_name_gem"
  spec.metadata["changelog_uri"] = "https://github.com/amitgdigi/full_name_gem/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
