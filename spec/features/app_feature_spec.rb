require 'spec_helper'

feature "test infrastructure working" do
  scenario "display the home page with text 'Test infrastructure working'" do
    visit("/")

    expect(page).to have_content "Test infrastructure working"
  end
end

feature "players fill in names" do
    scenario "2 players fill in name (form) - see names on screen" do
      visit("/")
      fill_in :player_1, with: "Alicia"
      fill_in :player_2, with: "Ben"
  
      click_button "Play"
      expect(page).to have_content "Alicia"
      expect(page).to have_content "Ben"
    end
  end