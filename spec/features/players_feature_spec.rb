
feature "players fill in names" do
    scenario "2 players fill in name (form) - see names on screen" do
      sign_in_and_play
      expect(page).to have_content "Alicia"
      expect(page).to have_content "Ben"
    end
  end

feature 'Hit point to be displayed' do
  scenario "see players and starting hit points" do
    sign_in_and_play
    expect(page).to have_content "60"
  end
end
