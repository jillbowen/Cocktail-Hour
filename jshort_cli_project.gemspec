require_relative 'lib/jshort_cli_project/version'

Gem::Specification.new do |spec|
  spec.name          = "jshort_cli_project"
  spec.version       = JshortCliProject::VERSION
  spec.authors       = ["jillbowen"]
  spec.email         = ["jillian.b.short@gmail.com"]

  spec.summary       = %q{This is project 1, CLI project, for Flatiron school.}
  spec.description   = %q{This CLI generates lists of adoptable dogs for users.}
  spec.homepage      = "http://learn.co"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "httparty"
  spec.add_dependency "dotenv"
  spec.add_dependency "shaken_not_stirred", "~> 0.0.7"
end
