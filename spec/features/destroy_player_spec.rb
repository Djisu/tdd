require "rails_helper"

RSpec.describe "destroys player" do
    it "delete a player and redirect to root path" do
        player = Player.create(first_name: "Paul", last_name: "Mensah")
        visit root_path
        click_link "Delete Profile"
        expect(current_path).to eq(root_path)
        expect(page).not_to have_text("Paul")

    end
end