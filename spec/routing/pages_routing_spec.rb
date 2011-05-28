require 'spec_helper'

describe "when no user signed in" do  
  it "should redirect to sign in page" do
    get('/').should route_to("pages#home")
  end
end