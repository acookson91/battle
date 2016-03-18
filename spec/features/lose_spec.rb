feature 'Lose' do
  scenario 'Show lose page once HP at 0' do
    sign_in_and_play
    10.times {
      click_button('ATTACK!')
      click_button('Return to Battle')
    }
      click_button('ATTACK!')
      expect(page).to have_content('YOU LOSE!')
  end
end
