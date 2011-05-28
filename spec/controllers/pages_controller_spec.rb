require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector(
        "title",
        :content => "Books Around You | About"
      )
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector(
        "title",
        :content => "Books Around You | Contact"
      )
    end
  end

  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end

    it "should have the right title" do
      get 'help'
      response.should have_selector(
        "title",
        :content => "Books Around You | Help"
      )
    end
  end

end
