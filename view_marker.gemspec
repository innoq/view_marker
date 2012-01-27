# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "view_marker/version"

Gem::Specification.new do |s|
  s.name        = "view_marker"
  s.version     = ViewMarker::VERSION
  s.authors     = ["Robert Glaser"]
  s.email       = ["mail@robert-glaser.de"]
  s.homepage    = ""
  s.summary     = %q{Marks Rails logs with a message at the beginning of view rendering}
  s.description = %q{Marks Rails logs with a message at the beginning of view rendering}

  s.rubyforge_project = "view_marker"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_runtime_dependency "rails"
end
