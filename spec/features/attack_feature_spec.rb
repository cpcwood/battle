feature "Attacking another player" do
    scenario "get confirmation on attack of player 2" do
			sign_in_and_play
			click_button "Attack"
      expect(page).to have_content "50"
    end
  end