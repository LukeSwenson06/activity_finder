require 'rails_helper'

RSpec.describe "Welcome Page" do 
    it 'has a form to search for activities' do 
        visit root_path
        
        expect(page).to have_content("Activity Finder")
        expect(page).to have_field(:num_participants)
        expect(page).to have_button("Find Activities")
    end
    
    it "produces an error message when number of participants doesn't return participants" do
        visit root_path

        fill_in :num_participants, with: -2
        click_button "Find Activities"

        expect(page).to have_content("no activities for that number of participants")
        expect(current_path).to eq(root_path)
    end
end 