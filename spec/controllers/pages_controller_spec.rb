require 'spec_helper'

describe PagesController do

  describe 'no user signed in' do
    it "should redirect" do
      get :home
      response.status.should == 302
    end
  end
end
