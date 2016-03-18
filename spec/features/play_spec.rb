feature 'Attacking' do
  scenario 'attacks player 2' do
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).to have_content("Nick attacked you")
  end
end
