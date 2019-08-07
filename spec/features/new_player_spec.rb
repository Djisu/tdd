require "rails_helper"

RSpec.describe "page to create a new player" do |variable|
    it "display the corrects fields to create anew player" do
        visit root_path
        click_link("New Player")

        expect(page).to have_field("First name")
        expect(page).to have_field("Last name")
    end
end