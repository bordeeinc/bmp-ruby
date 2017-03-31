# -*- ruby -*-

require "rubygems"
require "hoe"
require './lib/bmp/version.rb'

Hoe.plugin :gemspec
Hoe.plugin :minitest
Hoe.plugin :yard
Hoe.plugin :bundler
Hoe.plugin :git
Hoe.plugin :ignore

Hoe.spec "bmp" do
  developer("So Awesome Man", "callme@1800aweso.me")

  license "MIT" # this matches the license in the README

  self.email                = 'support@bordee.com'

  self.name                 = 'bmp-ruby'
  self.version              = BMP::VERSION
  self.summary              = 'Bitmap generator (bitmap as in BMP image, not bitmap bitset)'
  self.description          = self.summary
  self.urls                 = ['https://github.com/bordeeinc/bmp']
  self.testlib              = :minitest
  self.readme_file          = 'README.md'
  self.history_file         = 'History.txt'

  # third-party
  self.yard_title           = self.name
  self.yard_markup          = 'markdown'

  self.extra_deps += [
    ['chunky_png',                 '1.3.8'],
    ['bit-struct',                 '0.15.0']
  ]

  self.extra_dev_deps += [
    ["hoe-yard",                  "~> 0.1"],
    ["hoe-ignore",                "~> 1.0"],
    ["hoe-bundler",               "~> 1.2"],
    ["hoe-gemspec",               "~> 1.0"],
    ["hoe-git",                   "~> 1.6"],
    ["minitest",                  "~> 5.9"],
    ["yard",                      "~> 0.8"],
    ["redcarpet",                 "~> 3.3"] # yard/markdown
  ]

  self.clean_globs += [
    '.yardoc',
    'vendor',
    'Gemfile.lock',
    '.bundle',
  ]

  self.spec_extras = {
    :required_ruby_version => '>= 1.9.2'
  }
end

# require rake tasks
current_dir = File.expand_path(File.dirname(__FILE__))
Dir.glob(File.join(current_dir, 'lib/tasks/*.rake')).each {|r| import r} 

# vim: syntax=ruby
