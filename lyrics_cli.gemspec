require_relative 'lib/lyircs_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "lyircs_cli"
  spec.version       = LyircsCli::VERSION
  spec.authors       = ["YOUR_GITHUB_USER_NAME"]
  spec.email         = ["YOUR_GITHUB_EMAIL_ADDRESS"]

  spec.summary       = "lyrics GEM"
  spec.description   = "lyrics GEM"
  spec.homepage      = "https://github.com/Alondrob/lyrics_cli"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/Alondrob/lyrics_cli"

  spec.metadata["homepage_uri"] = "https://github.com/Alondrob/lyrics_cli"
  spec.metadata["source_code_uri"] = "https://github.com/Alondrob/lyrics_cli"
  spec.metadata["changelog_uri"] = "https://github.com/Alondrob/lyrics_cli"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
