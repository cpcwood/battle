require 'spec_helper'

feature "test infrastructure working" do
  scenario "display the home page with text 'Test infrastructure working'" do
    visit("/")

    expect(page).to have_content "Player_1: Player_2:"
  end
end

feature "players fill in names" do
    scenario "2 players fill in name (form) - see names on screen" do
      visit("/")
      fill_in :player1_name, with: "Alicia"
      fill_in :player2_name, with: "Ben"
  
      click_button "Play"
      expect(page).to have_content "Alicia"
      expect(page).to have_content "Ben"
    end
  end

feature 'Hit point to be displayed' do
  scenario "see players and starting hit points" do
     visit("/")
     fill_in :player1_name, with: "Alicia"
     fill_in :player2_name, with: "Ben"
     click_button "Play"
    expect(page).to have_content "60"
  end
end

