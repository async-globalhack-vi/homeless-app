class QualifiedNeedsController < ApiController
  def index
    render json: QualifiedNeed.all
  end

  def create
    need = QualifiedNeed.new qualified_need_data
    assistance_provider = need.nearest_assistance_who_can_meet_need
    puts "need is: #{need.inspect}"
    puts "assistance_provider is: #{assistance_provider.inspect}"
    need.user_id = assistance_provider.user_id
    need.save!
    render nothing: true, status: 201
  end

  private

  def qualified_need_data
    params.permit :total_needed, :point_of_contact, :phone, :deadline, :street_address, :city, :state, :zip
  end
end
