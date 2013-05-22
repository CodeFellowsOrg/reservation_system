require 'spec_helper'

feature "Create Customer" do

  before do
    visit '/'
    click_link "Create Customer"
  end

  scenario "create new customer" do
    fill_in "Name", with: "Jeff"
    click_button "Create Customer"
    page.should have_content("Jeff")
    page.should have_content("You have created a new customer.")
  end

  scenario "cannot create customer with empty name" do
    fill_in "Name", with: ""
    click_button "Create Customer"
    page.should have_content("You have not created a new customer.")
  end

end
