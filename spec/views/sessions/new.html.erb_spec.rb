require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :feature do
  scenario "has a form to enter name and a login button" do
    visit "/login"
    expect(page).to have_selector(:link_or_button, 'login')
    expect(page).to find_field(:name)
  end
end
