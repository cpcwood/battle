feature 'Game Over' do
  scenario 'Shows game over once a player is dead' do
		sign_in_and_play
    19.times{click_button 'Attack'}
    expect(page).to have_content 'Game Over!'
  end
  scenario 'Shows winning player' do
    sign_in_and_play
    19.times{click_button 'Attack'}
    expect(page).to have_content 'Alicia Wins!'
  end
  scenario 'Allow game to be played again' do
    sign_in_and_play
    19.times{click_button 'Attack'}
    click_button('Play Again?')
    expect(page).to have_selector(:link_or_button, 'Chrome Play Audio')
  end
end
