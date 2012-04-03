require 'spec_helper'

describe "PasswordResets" do
  it "emails user when requesting password reset" do
    user = Factory(:user)
    visit login_path
    click_link "password"
    fill_in "Email", :with => user.email
    click_button "Reset Password"
    save_and_open_page
    last_email.to.should include(user.email)
    #current_path.should eq(root_path)
    page.should have_content("Home")
    
  end
end
