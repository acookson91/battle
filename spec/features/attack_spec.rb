require 'capybara/dsl'
require 'selenium-webdriver'

include Capybara::DSL
Capybara.default_driver = :selenium

require 'spec_helper'

feature 'Attack' do
  scenario 'should attack player 2' do
    sign_in_and_play
    click_button('attack_player')
    expect(page).to have_content 'Ollie: 50HP'
  end
end
