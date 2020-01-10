feature "Homepage" do
  scenario "Displays player 1 and 2 input boxes'" do
    visit("/")
    expect(page).to have_content "Player 1: Player 2:"
  end
  scenario "Displays Chrome audio button" do
    visit("/")
    expect(page).to have_selector(:link_or_button, 'Chrome Play Audio')
  end
end
