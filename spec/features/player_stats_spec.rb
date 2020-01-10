feature "Player stats" do
    scenario "Player names are shown on the screen" do
      sign_in_and_play
      expect(page).to have_content "Alicia"
      expect(page).to have_content "Chris"
    end
    scenario "Hit points are shown on the screen" do
      sign_in_and_play
      expect(page).to have_content "HP: 100"
    end
end
