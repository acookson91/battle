def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Andy')
  fill_in('player2', with: 'Ollie')
  click_button('Submit')
end
