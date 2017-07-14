require 'rails_helper'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

describe "admin user routes and features" do
  it 'will create a new product', js: true do
    FactoryGirl.create(:user)
    FactoryGirl.create(:product)
    visit sign_in_path
    fill_in "email", with: 'good@lord'
    fill_in "password", with: '123456'
    click_button 'SIGN IN!'
    expect(page).to have_content('you successfully signed in!')
    click_on 'Coffee'
    expect(page).to have_content('Magical Elixir')
  end
end
