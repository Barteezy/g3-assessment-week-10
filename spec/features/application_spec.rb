require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"

    click_on "About"
    expect(page).to have_content "About not much to say"
  end
end
