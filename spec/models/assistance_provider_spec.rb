require "rails_helper"

RSpec.describe AssistanceProvider, :type => :model do
  context 'geolocation' do
    let (:event1) { FactoryGirl.create(:event, street_address:"1000 Spruce St.", city: "St. Louis", state: "MO", zip: "63102") }
    let (:event2) { FactoryGirl.create(:event, street_address:"1 S Compton Ave", city: "St. Louis", state: "MO", zip: "63102") }
    let (:qual_need1) { FactoryGirl.create(:qualified_need, street_address:"10035 Manchester Rd.", city: "Kirkwood", state: "MO", zip: "63122") }

    describe 'finding distance to objects with addresses fields' do
      it 'gives distance in miles to object' do
        subject.street_address = "900 Spruce St."
        subject.city = "St. Louis"
        subject.state = "MO"
        subject.zip = "63102"
        subject.save

        expect(subject.distance_to(event1)).to be < 0.1
        expect(subject.distance_to(event2)).to be > 1.0
        expect(subject.distance_to(event2)).to be < 2.0
        expect(subject.distance_to(qual_need1)).to be > 10.0
        expect(subject.distance_to(qual_need1)).to be < 12.0
      end
    end

    describe 'pledging to fund a need' do
      let! (:subject) { FactoryGirl.create(:assistance_provider, max_monthly_contribution: "1000", available_monthly_contribution: "1000" ) }
      let! (:need) { FactoryGirl.create(:qualified_need, total_needed: "300") }

      before do
        need.user_id = subject.user_id
        need.save!
        subject.pledge(need)
      end
      it 'decrements your available ask amount' do
        expect(subject.available_monthly_contribution.to_f).to be_within(0.01).of(700.0)
      end

      it 'leaves your monthly max amount the same' do
        expect(subject.max_monthly_contribution.to_f).to be_within(0.01).of(1000.0)
      end

      it 'sets the need to funded' do
        expect(need.funded).to be true
      end
    end

    describe 'rejecting funding a need' do
      let! (:subject) { FactoryGirl.create(:assistance_provider, max_monthly_contribution: "1000", available_monthly_contribution: "1000" ) }
      let! (:need) { FactoryGirl.create(:qualified_need, total_needed: "300") }

      before do
        need.user_id = subject.user_id
        need.save!
        subject.reject(need)
      end
      it 'leaves your available max amount the same' do
        expect(subject.available_monthly_contribution.to_f).to be_within(0.01).of(1000.0)
      end

      it 'leaves your monthly max amount the same' do
        expect(subject.max_monthly_contribution.to_f).to be_within(0.01).of(1000.0)
      end

      it 'does not set the need to funded' do
        expect(need.funded).to be false
      end
    end
  end
end
