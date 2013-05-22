require 'spec_helper'

feature "Edit Customer" do

  before do
    Factory(:customer, name: "Jeff")
    visit '/'
    click_link "Customers"
    click_link "Jeff"
    click_link "Edit"
  end

  scenario "edit customer name" do
    fill_in "Name", with: "Kat"
    click_button "Update Customer"
    page.should have_content("You have updated the customer.")
    page.should have_content("Kat")
  end

  scenario "edit customer with no name" do
    fill_in "Name", with: ""
    click_button "Update Customer"
    page.should have_content("You have not updated the customer.")
  end

end
