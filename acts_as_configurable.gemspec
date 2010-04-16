# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{acts_as_configurable}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philipp Ullmann"]
  s.date = %q{2010-04-16}
  s.description = %q{Storage of configuration values in database}
  s.email = %q{philipp.ullmann@create.at}
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "README.rdoc", "lib/acts_as_configurable.rb", "lib/dummy_access.rb"]
  s.files = ["CHANGELOG.rdoc", "Manifest", "README.rdoc", "Rakefile", "lib/acts_as_configurable.rb", "lib/dummy_access.rb", "acts_as_configurable.gemspec"]
  s.homepage = %q{http://www.create.at}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Acts_as_configurable", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{acts_as_configurable}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Storage of configuration values in database}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
