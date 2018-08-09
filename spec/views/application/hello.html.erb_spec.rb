require 'rails_helper'

RSpec.describe "application/hello.html.erb", type: :feature do
  scenario "root view greets the logged-in user" do
    test_name = "We are testing here"
    # @request.session[:name] = test_name
    visit "/login"
    fill_in "name", with: test_name
    click_button "login"
    expect(page).to have_text('Hi,')
  end

  scenario "shows the login link instead of greeting if not logged in" do
    visit '/'
    expect(@request.session[:name]).to be nil
    expect(page).to have_selector(:link_or_button, 'login')
  end
end
