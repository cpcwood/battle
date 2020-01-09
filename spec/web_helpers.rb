def sign_in_and_play
  visit("/")
  fill_in :player1_name, with: "Alicia"
  fill_in :player2_name, with: "Ben"
  click_button "Play"
end
