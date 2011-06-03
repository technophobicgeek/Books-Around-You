require 'spec_helper'

describe UsersController do

  render_views

  describe 'No user signed in' do
    it "should redirect to sign_in page" do
      get(:show).should redirect_to('/users/sign_in')
      response.status.should == 302
    end
  end

  describe 'User signed in' do
    before(:each) do
      @user = Factory(:user)
      sign_in @user
    end
    
    it "should go to user home" do
      get :show, :id => @user.id
      response.should be_success
    end
    
  end

end
