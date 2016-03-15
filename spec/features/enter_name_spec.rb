require 'capybara/dsl'
require 'selenium-webdriver'

include Capybara::DSL
Capybara.default_driver = :selenium

require 'spec_helper'

feature 'Enter names' do
  scenario 'should submit player 1 and player 2 name' do
    visit('/')
    fill_in('player1', with: 'Andy')
    fill_in('player2', with: 'Ollie')
    click_button('Submit')
    expect(page).to have_content 'Andy vs Ollie'
  end
end

feature 'display hitpoints' do
  scenario 'to see opponents hitpoints' do
    visit('/')
    fill_in('player1', with: 'Andy')
    fill_in('player2', with: 'Ollie')
    click_button('Submit')
    expect(page).to have_content 'Andy: 60HP'
    expect(page).to have_content 'Ollie: 60HP'
  end
end
