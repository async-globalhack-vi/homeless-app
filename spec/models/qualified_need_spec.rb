require "rails_helper"

RSpec.describe QualifiedNeed, :type => :model do
  context 'geolocation' do
    let (:user1) { FactoryGirl.create(:user) }
    let (:user2) { FactoryGirl.create(:user) }
    let (:user3) { FactoryGirl.create(:user) }
    let (:assistance_provider1) { FactoryGirl.create(:assistance_provider, user_id:user1.id, street_address:"1000 Spruce St.", city: "St. Louis", state: "MO", zip: "63102") }
    let (:assistance_provider2) { FactoryGirl.create(:assistance_provider, user_id:user2.id, street_address:"1 S Compton Ave", city: "St. Louis", state: "MO", zip: "63102") }
    let (:assistance_provider3) { FactoryGirl.create(:assistance_provider, user_id:user3.id, street_address:"10035 Manchester Rd.", city: "Kirkwood", state: "MO", zip: "63122") }
    let! (:all_assistance_providers) { [assistance_provider1, assistance_provider2, assistance_provider3] }

    describe 'can find distance to assistance provider' do
      it 'gives distance in miles' do
        subject.street_address = "900 Spruce St."
        subject.city = "St. Louis"
        subject.state = "MO"
        subject.zip = "63102"
        subject.save

        expect(subject.distance_to(assistance_provider1)).to be < 0.1
        expect(subject.distance_to(assistance_provider2)).to be > 1.0
        expect(subject.distance_to(assistance_provider2)).to be < 2.0
        expect(subject.distance_to(assistance_provider3)).to be > 10.0
        expect(subject.distance_to(assistance_provider3)).to be < 12.0
      end
    end

    describe 'finding nearest assistance provider' do
      let! (:subject) { FactoryGirl.create(:qualified_need, street_address: "900 Spruce St.", city:"St. Louis", state:"MO", zip:"63102") }
      it 'gives nearest qualified need' do
        expect(subject.nearest_assistance_who_can_meet_need).to eq assistance_provider1
      end
    end
  end
end
