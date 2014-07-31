require 'rails_helper'

feature "Staff" do
  scenario "user can click on staff member" do
    visit '/'
    create_user
    fill_in "user[email]", with: 'user@example.com'
    fill_in "user[password]", with: 'password'
    click_on "Login"
    click_link "New Person"
    fill_in "person_title", with: 'Supervisor'
    fill_in "person_first_name", with: 'Paul'
    fill_in "person_last_name", with: 'Stone'
    click_on "Create Person"
    click_on "Paul Stone"
    expect(page).to have_content("Supervisor")
    expect(page).to have_content("Paul Stone")
  end

  scenario "user can edit a staff member" do
    visit '/'
    create_user
    fill_in "user[email]", with: 'user@example.com'
    fill_in "user[password]", with: 'password'
    click_on "Login"
    click_link "New Person"
    fill_in "person_title", with: 'Supervisor'
    fill_in "person_first_name", with: 'joe'
    fill_in "person_last_name", with: 'shmo'
    click_on "Create Person"
    click_on "joe shmo"
    expect(page).to have_content("joe shmo")
    click_on "Edit"
    fill_in "person_last_name", with: 'example'
    click_on "Save"
    expect(page).to have_content("joe example")
  end
end