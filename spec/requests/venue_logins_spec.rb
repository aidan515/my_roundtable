require 'spec_helper'

describe "VenueLogins" do
  it "signs up a venue" do
    visit venue_signup_path
    fill_in "Name", :with => "Volunteer"
    fill_in "Email", :with => "volunteer@foobar.com"
    fill_in "Password", :with => "secret"
    fill_in "Password confirmation", :with => "secret"
    fill_in "Address 1", :with => "Baker St."
    fill_in "Address 2", :with => "London"
    fill_in "Post code", :with => "W2 1SQ"
    click_button "Create Venue"
    #save_and_open_page
    page.should have_content("Thank you")
    current_path.should eq(root_path)
  end

  it "logs in a venue" do
    #venue = Factory(:venue)
    FactoryGirl.create(:venue)
    visit v_login_path    
    fill_in "Email", :with => venue.email
    fill_in "Password", :with => venue.password
  end
end