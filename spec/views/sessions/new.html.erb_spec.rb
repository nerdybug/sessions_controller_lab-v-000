require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :feature do
  scenario "Login view has a login button" do
    visit "/login"
    expect(page).to have_selector(:link_or_button, 'login')
  end
end
