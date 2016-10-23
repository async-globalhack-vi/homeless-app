class CreateAssistanceProvider < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_hash
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
      t.float  :lat
      t.float  :lng
      t.string :max_monthly_contribution
      t.string :available_monthly_contribution
      t.integer :user_id
      t.integer :qualified_need_id
    end

    create_table :events do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.float  :lat
      t.float  :lng
      t.string :notes
      t.string :event_type
      t.string :date_of_event
      t.integer :user_id
      t.string :resolution
    end

    create_table :qualified_needs do |t|
      t.string :total_needed
      t.string :point_of_contact
      t.string :phone
      t.string :deadline
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.float  :lat
      t.float  :lng
      t.string :notes
      t.boolean :funded, :default => false
      t.integer :number_of_rejections, :default => 0
      t.integer :user_id
    end
  end
end
