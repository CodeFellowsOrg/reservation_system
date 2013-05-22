require 'spec_helper'

feature "Delete Customer" do

  scenario "delete customer" do
    Factory(:customer, name: "Jeff")
    visit '/'
    click_link "Customers"
    click_link "Jeff"
    click_link "Delete"
    page.should have_content("The customer has been deleted.")
  end
end

