require 'spec_helper'

describe UsersController do
  render_views
  
  describe 'No user signed in' do
    before(:each) do
      @user = Factory(:user)
    end
    
    it "should redirect to sign_in page" do
      get :show, :id => @user.id
      response.should redirect_to('/users/sign_in')
      response.status.should == 302
    end

    it "should redirect to user profile page after signing in"
    

  end

  describe 'User signed in' do
    before(:each) do
      @user = Factory(:user)
      sign_in @user
    end
    
    it "should go to user profile page" do
      get :show, :id => @user.id
      response.should be_success
    end

    it "should have user name as title" do
      get :show, :id => @user.id
      response.should have_selector("title", :content => @user.nickname)
    end
    
    it "should include the user's name" do
      get :show, :id => @user
      response.should have_selector("h1", :content => @user.nickname)
    end

    it "should have a profile image" do
      get :show, :id => @user
      response.should have_selector("h1>img", :class => "gravatar")
    end

    
  end

end
