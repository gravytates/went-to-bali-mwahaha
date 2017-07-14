require 'rails_helper'
require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

describe "admin user routes and features" do
  it 'will create a new product', js: true do
    FactoryGirl.create(:user)
    visit sign_in_path
    fill_in "email", with: 'good@email.com'
    fill_in "password", with: 'Az3456'
    click_button 'SIGN IN!'
    expect(page).to have_content('you successfully signed in!')
    click_on 'New Product'
    fill_in 'product_name', with: 'Steak'
    fill_in 'product_description', with: 'Necessity'
    fill_in 'product_price', with: '10.00'
    fill_in 'product_image', with: 'http://www.seriouseats.com/recipes/assets_c/2015/05/Anova-Steak-Guide-Sous-Vide-Photos15-beauty-thumb-1500xauto-423558.jpg'
    click_on 'Submit'
    expect(page).to have_content('New product successfully added!')
  end

  it 'will create a new product', js: true do
    FactoryGirl.create(:user)
    visit sign_in_path
    fill_in "email", with: 'good@email.com'
    fill_in "password", with: 'Az3456'
    click_button 'SIGN IN!'
    expect(page).to have_content('you successfully signed in!')
    click_on 'New Product'
    fill_in 'product_name', with: 'Steak'
    fill_in 'product_description', with: 'Necessity'
    fill_in 'product_price', with: '10.00'
    fill_in 'product_image', with: 'http://www.seriouseats.com/recipes/assets_c/2015/05/Anova-Steak-Guide-Sous-Vide-Photos15-beauty-thumb-1500xauto-423558.jpg'
    click_on 'Submit'
    expect(page).to have_content('New product successfully added!')
    click_on 'Add to cart'
    expect(page).to have_content('Total items: 1')
  end
end
