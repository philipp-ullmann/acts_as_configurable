require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'A User' do
  before(:each) do
    setup_db
    @user = User.create!
  end
  
  after(:each) do
    teardown_db
  end
  
  it 'should be able to create configuration values' do
    @user.configure.name = 'a'
    @user.configurable?.should == true
    @user.configure.name.should == 'a'
    
    Configuration.count.should == 1
    conf = Configuration.first
    conf.name.should == 'name'
    conf.value.should == 'a'
  end
end
