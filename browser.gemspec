require "./lib/browser/version"

Gem::Specification.new do |s|
  s.required_ruby_version = ">= 1.8.7"
  s.name                  = "browser"
  s.version               = Browser::VERSION
  s.platform              = Gem::Platform::RUBY
  s.authors               = ["Nando Vieira"]
  s.email                 = ["fnando.vieira@gmail.com"]
  s.homepage              = "http://github.com/fnando/browser"
  s.summary               = "Do some browser detection with Ruby."
  s.description           = s.summary
  s.license               = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- exe/*`.
                    split("\n").
                    map {|f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", ">= 0"
  s.add_development_dependency "rake", "0.9.6"
  s.add_development_dependency "rails", "2.3.8"
  s.add_development_dependency "rack-test", '0.5.3'
  s.add_development_dependency "minitest"
  s.add_development_dependency "minitest-utils" #:github => 'vikram101087/minitest-utils'
  s.add_development_dependency "minitest-autotest"
end
