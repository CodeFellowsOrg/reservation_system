require 'spec_helper'

feature "Edit Restaurant" do

  before do
    Factory(:restaurant, name: "Burger Town")
    visit '/'
    click_link "Restaurants"
    click_link "Burger Town"
    click_link "Edit"
  end

  scenario "edit restaurant name" do
    fill_in "Name", with: "Taco Bell"
    click_button "Update Restaurant"
    page.should have_content("You have updated the restaurant.")
    page.should have_content("Taco Bell")
  end

  scenario "edit restaurant with no name" do
    fill_in "Name", with: ""
    click_button "Update Restaurant"
    page.should have_content("You have not updated the restaurant.")
  end

end
