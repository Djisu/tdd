require "rails_helper"

RSpec.describe "updates a player" do
    it "updates the player and redirect to the root page" do
        player = Player.create(first_name: "Aponkye", last_name: "Bonn")
        visit root_path
        expect(page).to have_text("Aponkye")
        click_link "Edit Profile"
        fill_in "First name", with: "John"
        click_button "Update Player"
        expect(current_path).to eq(root_path)
        expect(page).not_to have_text("Aponkye")
        expect(page).to have_text("John")
    end
end 