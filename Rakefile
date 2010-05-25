require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = 'acts_as_configurable'
    gem.summary = 'Storage of configuration values in database'
    gem.description = 'Storage of configuration values in database'
    gem.email = 'philipp.ullmann@create.at'
    gem.homepage = 'http://github.com/create-philipp-ullmann/acts_as_configurable'
    gem.authors = ['Philipp Ullmann']
    gem.add_development_dependency 'rspec', '>= 1.3.0'
    gem.add_development_dependency 'sqlite3-ruby', '>=1.2.5'
    gem.add_development_dependency 'activerecord', '>= 3.0.0.beta3'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts 'Jeweler (or a dependency) not available. Install it with: gem install jeweler'
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "test #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
