require 'rails_helper'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

describe "admin user routes and features" do
  it 'will create a new product' do
    user = FactoryGirl.create(:user)
    FactoryGirl.create(:product)
    visit sign_in_path
    fill_in "email", with: 'person_1@email.com'
    fill_in "password", with: '123456'
    click_link 'Sign in'
    visit products_path
    expect(page).to have_content('Coffee')
  end
end
