# -*- encoding: utf-8 -*-
# stub: bmp-ruby 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "bmp-ruby"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["So Awesome Man"]
  s.date = "2017-03-31"
  s.description = "Bitmap generator (bitmap as in BMP image, not bitmap bitset)"
  s.email = "support@bordee.com"
  s.executables = ["bmp"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.md", "History.txt"]
  s.files = [".autotest", ".gitignore", ".hoeignore", "Gemfile", "History.txt", "LICENSE", "Manifest.txt", "README.md", "Rakefile", "bin/bmp", "lib/bmp.rb", "lib/bmp/obj.rb", "lib/bmp/utils.rb", "lib/bmp/version.rb", "lib/core_ext/array/extract_options.rb", "lib/tasks/bmp.rake", "test/files/input/YVES-framework-opaque-16.png", "test/files/input/YVES-framework-opaque-256.png", "test/files/input/YVES-framework-transparent-16.png", "test/files/input/YVES-framework-transparent-256.png", "test/files/output/.keep", "test/test_bmp.rb"]
  s.homepage = "https://github.com/bordeeinc/bmp-ruby"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--title", "bmp-ruby", "--markup", "markdown", "--quiet"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.2.5"
  s.summary = "Bitmap generator (bitmap as in BMP image, not bitmap bitset)"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chunky_png>, ["= 1.3.8"])
      s.add_runtime_dependency(%q<bit-struct>, ["= 0.15.0"])
      s.add_development_dependency(%q<minitest>, ["~> 5.10"])
      s.add_development_dependency(%q<hoe-yard>, [">= 0.1.3"])
      s.add_development_dependency(%q<hoe-ignore>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-bundler>, ["~> 1.2"])
      s.add_development_dependency(%q<hoe-gemspec>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-git>, ["~> 1.6"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
      s.add_development_dependency(%q<redcarpet>, ["~> 3.3"])
      s.add_development_dependency(%q<hoe>, ["~> 3.16"])
    else
      s.add_dependency(%q<chunky_png>, ["= 1.3.8"])
      s.add_dependency(%q<bit-struct>, ["= 0.15.0"])
      s.add_dependency(%q<minitest>, ["~> 5.10"])
      s.add_dependency(%q<hoe-yard>, [">= 0.1.3"])
      s.add_dependency(%q<hoe-ignore>, ["~> 1.0"])
      s.add_dependency(%q<hoe-bundler>, ["~> 1.2"])
      s.add_dependency(%q<hoe-gemspec>, ["~> 1.0"])
      s.add_dependency(%q<hoe-git>, ["~> 1.6"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
      s.add_dependency(%q<redcarpet>, ["~> 3.3"])
      s.add_dependency(%q<hoe>, ["~> 3.16"])
    end
  else
    s.add_dependency(%q<chunky_png>, ["= 1.3.8"])
    s.add_dependency(%q<bit-struct>, ["= 0.15.0"])
    s.add_dependency(%q<minitest>, ["~> 5.10"])
    s.add_dependency(%q<hoe-yard>, [">= 0.1.3"])
    s.add_dependency(%q<hoe-ignore>, ["~> 1.0"])
    s.add_dependency(%q<hoe-bundler>, ["~> 1.2"])
    s.add_dependency(%q<hoe-gemspec>, ["~> 1.0"])
    s.add_dependency(%q<hoe-git>, ["~> 1.6"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
    s.add_dependency(%q<redcarpet>, ["~> 3.3"])
    s.add_dependency(%q<hoe>, ["~> 3.16"])
  end
end
