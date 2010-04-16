require 'dummy_access'

module ActsAsConfigurable
  def self.included(base)
    base.extend ClassMethods
  end

  # This +acts_as+ extension provides the capabilities of defining configuration values.
  #
  # Example:
  #
  #   class User < ActiveRecord::Base
  #     acts_as_configurable :class_name => 'Ste::Configuration'
  #   end
  #
  #   user.configure.name = 'Name'
  #   user.configure.name => Name
  module ClassMethods
    def acts_as_configurable(options={})
      configuration = { :as => :configurable, :dependent => :destroy, :class_name => 'Configuration' }
      configuration.update(options) if options.is_a? Hash
          
      class_eval <<-EOV
        include ActsAsConfigurable::InstanceMethods

        has_many :configs, configuration
        accepts_nested_attributes_for :configs, :allow_destroy => true
      EOV
    end
  end
  
  # All the methods available to a record that has had <tt>acts_as_configurable</tt> specified.
  module InstanceMethods
    def configurable?
      true
    end
    
    def configure
      return ::DummyAccess.new self
    end
  end
end

ActiveRecord::Base.class_eval { include ActsAsConfigurable }
