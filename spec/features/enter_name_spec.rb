require 'capybara/dsl'
require 'selenium-webdriver'

include Capybara::DSL
Capybara.default_driver = :selenium

require 'spec_helper'

feature 'Enter names' do
  scenario 'should submit player 1 name' do
    visit('/')
    fill_in('player1', with: 'Andy')
    click_button('Submit')
    expect(page).to have_content 'Andy'
  end
end
