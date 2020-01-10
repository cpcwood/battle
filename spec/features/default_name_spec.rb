feature "Default names" do
  scenario "Displays player 1 and 2 input boxes'" do
    visit("/")
    click_button('Fight')
    expect(page).to have_content "Player's Turn!!"
  end
end
