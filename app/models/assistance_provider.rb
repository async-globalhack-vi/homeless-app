class AssistanceProvider < ActiveRecord::Base
  belongs_to :user
  has_many :qualified_needs
  alias rejected_qualified_needs qualified_needs

  acts_as_mappable :lat_column_name => :lat,
                   :lng_column_name => :lng,
                   :auto_geocode=>{:field=>:address, :error_message=>'Could not geocode address'}

  before_save :default_values

  def default_values
    self.available_monthly_contribution ||= self.max_monthly_contribution
  end

  def pledge(qualified_need)
    qualified_need.funded = true
    self.available_monthly_contribution = (max_monthly_contribution.to_f - qualified_need.total_needed.to_f).to_s
    qualified_need.save!
    self.save!
  end

  def reject(qualified_need)
    qualified_need.user_id = nil
    qualified_need.rejections << self
    qualified_need.number_of_rejections += 1
    qualified_need.save!
    if (next_provider = qualified_need.nearest_assistance_who_can_meet_need)
      qualified_need.user_id = next_provider.user_id
    end
    qualified_need.save!

    self.available_monthly_contribution = "0"
    self.save
  end

  def address
    "#{street_address}, #{city}, #{state}, #{zip}"
  end
end
