feature "Game Over" do
  scenario "Shows game over once a player is dead" do
		sign_in_and_play
    11.times{click_button "Attack"}
    expect(page).to have_content "Game Over!"
  end
  scenario "Shows winning player" do
    sign_in_and_play
    11.times{click_button "Attack"}
    expect(page).to have_content "Alicia Wins!"
  end
end
