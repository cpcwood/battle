feature "Switching turns" do
  scenario "Shows player turn" do
		sign_in_and_play
    expect(page).to have_content "It's Alicia's Turn!!"
  end
  scenario "Turn switches" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "It's Ben's Turn!!"
  end
end
