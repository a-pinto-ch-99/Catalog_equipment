require 'rails_helper'
describe "security", :type => :feature do
   it "sign up page should work" do
   user = FactoryGirl.build(:user)
   visit "/"
   click_link("Sign up")
   fill_in "Email", with: user.email
   fill_in "Password", with: user.password
   fill_in "Password confirmation", with: user.password
   click_button "Sign up"
   expect(page).to have_content "Welcome! You have signed up successfully."
   end
end
