
feature "test infrastructure working" do
    scenario "display the home page with text 'Test infrastructure working'" do
      visit("/")
      expect(page).to have_content "Player_1: Player_2:"
  end
end

