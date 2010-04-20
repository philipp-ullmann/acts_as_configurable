$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'active_record'
require 'acts_as_configurable'
require 'spec'
require 'spec/autorun'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")

def setup_db
  ActiveRecord::Schema.define(:version => 1) do
    create_table :users do |t|
      t.string :name
    end
    
    create_table :configurations do |t|
      t.string :configurable_type, :name, :value
      t.integer :configurable_id
    end
  end
end

def teardown_db
  ActiveRecord::Base.connection.tables.each do |table|
    ActiveRecord::Base.connection.drop_table table
  end
end

class User < ActiveRecord::Base
  acts_as_configurable
end

class Configuration < ActiveRecord::Base
  belongs_to :configurable, :polymorphic => true
end

Spec::Runner.configure do |config|
end
