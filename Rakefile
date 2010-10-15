require 'rubygems'
require 'rake'
require 'rspec/core/rake_task'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = 'acts_as_configurable'
    gem.summary = 'Storage of configuration values in database'
    gem.description = 'Storage of configuration values in database'
    gem.email = 'philipp.ullmann@create.at'
    gem.homepage = 'http://github.com/create-philipp-ullmann/acts_as_configurable'
    gem.authors = ['Philipp Ullmann']
    gem.add_development_dependency 'rspec', '>= 2.0.0'
    gem.add_development_dependency 'sqlite3-ruby', '>= 1.3.1'
    gem.add_development_dependency 'activerecord', '>= 3.0.0'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts 'Jeweler (or a dependency) not available. Install it with: gem install jeweler'
end

desc('Run RSpec')
RSpec::Core::RakeTask.new do |t|
  t.verbose = false
end

task(:default => :spec)
