class CreateAssistanceProvider < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
    end

    create_table :care_coordinators do |t|
      t.string :name
      t.string :email
      t.integer :user_id
    end

    create_table :assistance_providers do |t|
      t.string :name
      t.string :email
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :max_monthly_contribution
      t.integer :user_id
    end

    create_table :events do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :notes
      t.string :event_type
      t.string :date_of_event
    end
  end
end
