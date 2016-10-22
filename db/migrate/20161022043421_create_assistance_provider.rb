class CreateAssistanceProvider < ActiveRecord::Migration[5.0]
  def change
    create_table :assistance_providers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :max_monthly_contribution
    end
  end
end
