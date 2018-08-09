require 'rails_helper'

RSpec.describe "application/hello.html.erb", type: :feature do
  scenario "root view greets the logged-in user" do
    test_name = "We are testing here"
    @request.session[:name] = test_name
    visit "/"
    expect(page).to have_text('Hi,')
  end
end
