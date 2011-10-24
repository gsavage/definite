# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "definite/version"

Gem::Specification.new do |s|
  s.name        = "definite"
  s.version     = Definite::VERSION
  s.authors     = ["Graham S Savage"]
  s.email       = ["grahamsavage@gmail.com"]
  s.homepage    = "https://github.com/gsavage/definite"
  s.summary     = %q{Database manipulation without migrations}
  s.description = %q{Create the definitive description of your DB and let Definite modify your schema safely for you}

  s.rubyforge_project = "definite"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "aruba"
  s.add_development_dependency "sqlite3-ruby"

  s.add_dependency "activerecord"
  s.add_dependency "thor"
end
