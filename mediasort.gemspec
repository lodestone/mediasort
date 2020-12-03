# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: mediasort 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mediasort"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Matt Petty"]
  s.date = "2015-03-15"
  s.description = "Sort media files from a directory into another directory in the format of: <YEAR>/<MONTH>/<YEAR-MONTH-DAY>/<FILENAME.EXT>"
  s.email = "matt@kizmeta.com"
  s.executables = ["mediasort"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/mediasort",
    "lib/mediasort.rb",
    "mediasort.gemspec",
    "test/helper.rb",
    "test/test_mediasort.rb"
  ]
  s.homepage = "http://github.com/lodestone/mediasort"
  s.licenses = ["MIT"]
  # s.rubygems_version = "2.4.5"
  s.summary = "Tidy up directory of media files"
  s.add_development_dependency("bundler")
  s.add_development_dependency("jeweler")
end

