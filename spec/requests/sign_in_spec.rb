require 'rails_helper'
describe "security", :type => :feature do
   it "sign in page should work" do
   user = FactoryGirl.create(:user)
   visit "/"
   click_link("Login")
   fill_in "Email", with: user.email
   fill_in "Password", with: user.password
   click_button "Sign in"
   expect(page).to have_content "Signed in successfully"
   end
end
