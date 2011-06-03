require 'spec_helper'

describe UsersController do

  render_views

  describe 'no user signed in' do
    it "should redirect" do
      get(:show).should redirect_to('/users/sign_in')
      response.status.should == 302
    end
  end


end
