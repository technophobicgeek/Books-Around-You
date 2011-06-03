require 'spec_helper'

describe User do

  before(:each) do
    @attr = {
      :nickname => "user",
      :email => "user@example.com",
      :password => "test123"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  it "should require a username" do
    no_name_user = User.new(@attr.merge(:nickname => ""))
    no_name_user.should_not be_valid
  end


end
