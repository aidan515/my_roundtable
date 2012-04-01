require 'spec_helper'

describe "CreateRoundtables" do
  it "creates a roundtable" do
    user = Factory(:user)
    roundtable = Factory(:roundtable)
    visit login_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Log In"
    current_path.should eq(show_user_path)
    # save_and_open_page
    page.find_link("Log out")
    page.find_button("Create roundtable")
    fill_in "Topic"
    fill_in "Number of Attendees"
    fill_in "Date"
    fill_in "Time"
    fill_in "Restaurant"
    click_button "Create roundtable"
    current_path.should eq(index_roundtable_path)
  end
end