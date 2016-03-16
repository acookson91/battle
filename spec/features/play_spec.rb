require 'spec_helper'

feature "#hitpoints" do
  scenario "1.0 As Player 1 I can see Player 2's hit points" do
    visit('/')
    fill_in 'player1', with: "Andranator"
    fill_in 'player2', with: "Simasher"
    click_button 'Play MOTHERS!'


    expect(page).to have_text("Andranator LIFE : 100% ")
    expect(page).to have_text("Simasher LIFE : 100% ")
  end
end
