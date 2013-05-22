require 'spec_helper'

feature "Delete Restaurant" do

  scenario "delete restaurant" do
    Factory(:restaurant, name: "Burger Town")
    visit '/'
    click_link "Restaurants"
    click_link "Burger Town"
    click_link "Delete"
    page.should have_content("The restaurant has been deleted.")
  end
end

