class QualifiedNeed < ActiveRecord::Base
  has_one :user
  has_many :assistance_providers
  alias rejections assistance_providers

  acts_as_mappable :lat_column_name => :lat,
                   :lng_column_name => :lng,
                   :auto_geocode=>{:field=>:address, :error_message=>'Could not geocode address'}

  def address
    "#{street_address}, #{city}, #{state}, #{zip}"
  end

  def nearest_assistance_who_can_meet_need
    nearest_provider = nil
    nearest_distance = 100000
    AssistanceProvider.all.each do |provider|
      next unless can_meet_need(provider)
      dist = self.distance_to(provider)
      if (dist < nearest_distance)
        nearest_distance = dist
        nearest_provider = provider
      end
    end
    nearest_provider
  end

  def can_meet_need(assistance_provider)
    self.total_needed < assistance_provider.max_monthly_contribution
  end
end
