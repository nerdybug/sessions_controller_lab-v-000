require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :feature do
  scenario "User arrives at root page" do
    visit '/'
    expect(page).to have_text("login")
  end
end
