require 'rails_helper'

feature "Assignments" do
  scenario "user can add location and role to a person" do
    visit '/'
    create_person
    create_user
    fill_in "user[email]", with: 'user@example.com'
    fill_in "user[password]", with: 'password'
    click_on "Login"
    click_on "Paul Stone"
    click_on "+ Add Location"
    expect(page).to have_content("Assign Paul Stone to a Location")
    select "Mountain West", from: "assignment_location_id"
    fill_in "role", with: "Market Manager"
    click_on "Assign"
    expect(page).to have_content("Mountain West")
  end
end