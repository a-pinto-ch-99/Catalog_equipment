require 'rails_helper'
describe "security", :type => :feature do
   it "sign in page should work" do
   visit "/"
   click_link("Login")
   fill_in "Email", with:"raphael.walther@gmail.com"
   fill_in "Password", with:"tototest"
   click_button "Sign in"
   expect(page).to have_content "Signed in successfully"
   end
end
