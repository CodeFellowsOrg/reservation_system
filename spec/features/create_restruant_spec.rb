require 'spec_helper'

feature "Create Restaurant" do

  before do
    visit '/'
    click_link "Create Restaurant"
  end

  scenario "create new restaurant" do
    fill_in "Name", with: "Burger Town"
    click_button "Create Restaurant"
    page.should have_content("Burger Town")
    page.should have_content("You have created a new restaurant.")
  end

  scenario "cannot create restaurant with empty name" do
    fill_in "Name", with: ""
    click_button "Create Restaurant"
    page.should have_content("You have not created a new restaurant.")
  end

end
