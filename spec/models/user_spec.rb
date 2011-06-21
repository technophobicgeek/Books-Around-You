require 'spec_helper'

describe User do

  before(:each) do
    @attr = {
      :name => "user",
      :email => "user@example.com",
      :password => "test123"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  it "should require a name" do
    no_name_user = User.new(@attr.merge(:name => ""))
    no_name_user.should_not be_valid
  end


end
