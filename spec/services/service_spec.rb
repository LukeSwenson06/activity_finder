require "rails_helper"

RSpec.describe "Service Connection" do
    it 'recives a response from external API' do
        activities = ActivityService.get_activity(2)
        
        expect(activities).to be_a Hash
        expect(activities).to have_key :activity 
        expect(activities[:activity]).to be_a String
        expect(activities).to have_key :activity 
        expect(activities[:type]).to be_a String
        expect(activities).to have_key :type 
        expect(activities[:participants]).to be_a Integer
        expect(activities).to have_key :participants 
        expect(activities[:price]).to be_a Float
        expect(activities).to have_key :price 
        expect(activities[:accessibility]).to be_a Float
        expect(activities).to have_key :accessibility 

    end
end
