# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'tagger/version'

Gem::Specification.new do |s|
  s.name        = 'tagger'
  s.version     = Tagger::VERSION
  s.authors     = ['Enrico Pilotto']
  s.email       = ['enrico@megiston.it']
  s.homepage    = ''
  s.summary     = %q{Add ID3 tag to a mp3 file using filename}
  s.description = %q{Add ID3 tag to a mp3 file using filename.}

  s.rubyforge_project = 'tagger'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency('cocaine')
  s.requirements  = ['eyeD3']
end
