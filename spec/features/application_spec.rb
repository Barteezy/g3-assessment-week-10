require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"

    click_on "About"
    expect(page).to have_content "About not much to say"

    visit "/"
    click_on "New gif"

    fill_in "URL", :with => "gif.com"
    fill_in "Description", :with => "Awesome gif"

    click_on "Create gif"

    expect(page).to have_content "gif created successfully"

    expect(page).to have_content "Awesome gif"
  end
end
