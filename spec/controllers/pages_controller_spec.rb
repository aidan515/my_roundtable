require 'spec_helper'

describe PagesController do
  render_views                        #this is needed so that we can test views as well
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'                      #Get request for pages/home
      response.should be_success      #Verifies the HTTP status code of 200 'Success'
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end
end
