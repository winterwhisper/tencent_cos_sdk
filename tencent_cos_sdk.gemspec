
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tencent_cos_sdk/version"

Gem::Specification.new do |spec|
  spec.name          = "tencent_cos_sdk"
  spec.version       = TencentCosSdk::VERSION
  spec.authors       = ["xia xiongjun"]
  spec.email         = ["xxjapp@gmail.com"]

  spec.summary       = %q{tencent cos sdk for ruby}
  spec.description   = %q{tencent cos sdk for ruby}
  spec.homepage      = "https://github.com/xxjapp/tencent_cos_sdk"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "openssl", "~> 2.1"
  spec.add_runtime_dependency "colorize", "~> 0.8"
  spec.add_runtime_dependency "rest-client", "~> 2.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
