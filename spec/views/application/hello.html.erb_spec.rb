require 'rails_helper'

RSpec.describe "application/hello.html.erb", type: :feature do
  scenario "root view greets the logged-in user" do
    visit "/"
    expect(page).to have_text('Hi,')
  end
end
