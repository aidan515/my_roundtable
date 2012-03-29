require 'spec_helper'

describe "PasswordResets" do
  it "emails user when requesting password reset" do
    user = Factory.build(:user)
    visit login_path
    click_link "password"
    fill_in "Email", :with => user.email
    click_button "Reset Password"
    current_path.should eq(root_path)
   # save_and_open_page
    page.should have_content("not signed up")
   # last_email.to.should include(user.email)
  end
end
