require 'rails_helper'

RSpec.describe "Activity Index Page" do
    it "displays all activity" do

    visit "/activity"

    expect(page).to have_content("Activity:")
    expect(page).to have_content("Number of Participants:")
    expect(page).to have_content("Price:")
    end
end