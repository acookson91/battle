require 'spec_helper'

feature "#hitpoints" do
  scenario "1.0 As Player 1 I can see Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_text("Terry LIFE : 100% ")
    expect(page).to have_text("Ruff LIFE : 100% ")
  end
end

feature "#attack" do
  scenario "2.0 As Player 1 I would like attack player 2 and get a confirmation" do
    sign_in_and_play
    click_button('Player 1 Attacks')
    expect(page).to have_text("Terry attacked Ruff")
  end
end
