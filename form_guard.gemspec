# frozen_string_literal: true

require_relative "lib/form_guard/version"

Gem::Specification.new do |spec|
  spec.name = "form_guard"
  spec.version = FormGuard::VERSION
  spec.authors = ["Stoyan Nikolov"]
  spec.email = ["s.nikolov@roomspilot.com"]

  spec.summary = "A Rails gem to protect forms from bot submissions using honeypot and timestamp checks."
  spec.description = "FormGuard provides a simple way to prevent bot form submissions in Rails applications using honeypot fields and timestamp-based validation."
  spec.homepage = "https://github.com/amigobg/form_guard"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata = {
    "source_code_uri" => "https://github.com/amigobg/form_guard",
    "changelog_uri" => "https://github.com/amigobg/form_guard/blob/master/CHANGELOG.md",
    "bug_tracker_uri" => "https://github.com/amigobg/form_guard/issues"
  }

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir[
      "lib/**/*.rb",
      "lib/**/*.erb",
      "README.md",
      "LICENSE*",
      "CHANGELOG.md",
      "Rakefile",
      "test/**/*.rb"
    ]
  end
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails", ">= 6.0", "< 8.0"
  spec.add_runtime_dependency "activesupport", ">= 6.0", "< 8.0"

  spec.add_development_dependency "minitest", "~> 5.16"
  spec.add_development_dependency "actionpack", "~> 6.0"
  spec.add_development_dependency "actionview", "~> 6.0"
end