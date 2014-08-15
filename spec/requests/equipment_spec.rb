require 'rails_helper'
describe "Create equipment form should go to step 2", :type => :feature do
   it "create equipement should work" do
   user = FactoryGirl.create(:user)
   equipment = FactoryGirl.build(:equipment)
   visit "/"
   click_link("Login")
   fill_in "Email", with: user.email
   fill_in "Password", with:user.password
   click_button "Sign in"
   visit "/"
   click_button("New Equipment")
   fill_in "Eq name", with: equipment.eq_name
   fill_in "Eq description", with:equipment.eq_description
   fill_in "Eq number", with: equipment.eq_number
   click_button "Create a New Equipment"
   expect(page).to have_content "Step 2 : Link Categories"
   end
end
