require 'rails_helper'

RSpec.describe ActivityFacade do
    it 'creates activity poro from activity service' do
        activity = ActivityFacade.find_activity(2)

        expect(activity).to be_a(Activity)

    end
end