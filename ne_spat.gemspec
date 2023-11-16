# frozen_string_literal: true

require_relative "lib/ne_spat/version"

Gem::Specification.new do |spec|
  spec.name = "ne_spat"
  spec.version = NeSpat::VERSION
  spec.authors = ["ar2em1s"]
  spec.email = ["artemsheva0510@gmail.com"]

  spec.summary = "Do not let your machine fall asleep."
  spec.homepage = "https://github.com/ar2em1s/ne_spat"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rumouse", "~> 0.0.7"
end
