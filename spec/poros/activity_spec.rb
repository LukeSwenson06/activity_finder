require "rails_helper"

RSpec.describe Activity do
    it "returns ruby objects" do
        response = File.read('spec/fixtures/activities.json')
        json = JSON.parse(response, symbolize_names: :true)
        activities = Activity.new(json)


        expect(activities).to be_a Activity
        expect(activities.description).to eq("Cook something together with someone")
        expect(activities.type).to eq("cooking")
        expect(activities.participants).to eq(2)
        expect(activities.accessibility).to eq(0.8)
        expect(activities.price).to eq(0.3)
    end
end