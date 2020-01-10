feature "Attacking another player" do
  scenario "attack on a player reduces HP" do
		sign_in_and_play
		click_button "Attack"
    expect(page).to have_content "90"
  end
end
