feature "Switching turns" do
  scenario "Shows which players turn it is" do
		sign_in_and_play
    expect(page).to have_content "It's Alicia's Turn!!"
  end
  scenario "Turn switches after each play" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "It's Chris's Turn!!"
  end
end
