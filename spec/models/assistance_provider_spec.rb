require "rails_helper"

RSpec.describe AssistanceProvider, :type => :model do
  context 'geolocation' do
    let (:event1) { FactoryGirl.create(:event, street_address:"1000 Spruce St.", city: "St. Louis", state: "MO", zip: "63102") }
    let (:event2) { FactoryGirl.create(:event, street_address:"1 S Compton Ave", city: "St. Louis", state: "MO", zip: "63102") }
    let (:event3) { FactoryGirl.create(:event, street_address:"10035 Manchester Rd.", city: "Kirkwood", state: "MO", zip: "63122") }

    describe 'finding distance to event with lat/lng fields' do
      it 'gives distance in miles to event' do
        subject.street_address = "900 Spruce St."
        subject.city = "St. Louis"
        subject.state = "MO"
        subject.zip = "63102"
        subject.save

        expect(subject.distance_to(event1)).to be < 0.1
        expect(subject.distance_to(event2)).to be > 1.0
        expect(subject.distance_to(event2)).to be < 2.0
        expect(subject.distance_to(event3)).to be > 10.0
        expect(subject.distance_to(event3)).to be < 12.0
      end
    end
  end
end
