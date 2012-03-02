# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gollum_editor/version"

Gem::Specification.new do |s|
  s.name        = "gollum_editor"
  s.version     = GollumEditor::VERSION
  s.authors     = ["Sam Knight"]
  s.email       = ["sam@samknight.co.uk"]
  s.homepage    = ""
  s.summary     = %q{Gollum text editor}
  s.description = %q{Use Gollum editor for text areas}

  s.rubyforge_project = "gollum_editor"

  s.files         = Dir["{lib,vendor}/**/*"] - ["Gemfile.lock"]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency 'railties', '~> 3.2'
  
  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
