class AssistanceProvider < ActiveRecord::Base
  belongs_to :user
  has_many :qualified_needs
  alias rejected_qualified_needs qualified_needs

  acts_as_mappable :lat_column_name => :lat,
                   :lng_column_name => :lng,
                   :auto_geocode=>{:field=>:address, :error_message=>'Could not geocode address'}

  def address
    "#{street_address}, #{city}, #{state}, #{zip}"
  end
end
