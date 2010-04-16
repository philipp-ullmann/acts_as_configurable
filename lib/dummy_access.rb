# Class to ease the getting and setting of configuration values
class DummyAccess
  def initialize(mod)
    @mod = mod
  end
  
  def method_missing(method_name, *args)
    method_name = method_name.to_s
    name = method_name.chomp '='
    conf = @mod.configs.find_by_name name
    
    if method_name.ends_with? '='
      conf ? conf.update_attribute(:value, args[0]) : @mod.configs.create!(:name => name, :value => args[0])
      conf
    else
      conf ? conf.value : raise("Configuration attribute '#{method_name}' doesn't exists")
    end
  end
end
