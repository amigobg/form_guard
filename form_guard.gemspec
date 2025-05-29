# frozen_string_literal: true

require_relative "lib/form_guard/version"

Gem::Specification.new do |spec|
  spec.name = "form_guard"
  spec.version = FormGuard::VERSION
  spec.authors = ["Stoyan Nikolov"]
  spec.email = ["s.nikolov@roomspilot.com"]
  
  spec.homepage = "https://github.com/amigobg/form_guard"
  spec.metadata = {
    "source_code_uri" => "https://github.com/amigobg/form_guard",
    "changelog_uri"   => "https://github.com/amigobg/form_guard/blob/master/CHANGELOG.md"
  }

  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"
  
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir[
      "lib/**/*.rb",
      "lib/**/*.erb",
      "README.md",
      "LICENSE*",
      "Rakefile",
      "test/**/*.rb"
    ]
  end
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails", ">= 6.0"
end
