require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe(User) do
  before(:each) do
    setup_db
    @user = User.create!
  end
  
  after(:each) do
    teardown_db
  end
  
  describe('#configurable?') do
    it('returns true') do
      @user.configurable?.should(be_true)
    end
  end
  
  describe('#configure') do
    context('whith a name') do
      before(:each) do
        @user.configure.name = 'a'
      end
      
      it('returns the name') do
        @user.configure.name.should == 'a'
      end
      
      it('saves the name') do
        Configuration.count.should == 1
      end
      
      it('sets the configuration name') do
        Configuration.first.name.should == 'name'
      end
      
      it('sets the configuration value') do
        Configuration.first.value.should == 'a'
      end
    end
  end
end
