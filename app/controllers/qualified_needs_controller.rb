class QualifiedNeedsController < ApiController
  def index
    render json: QualifiedNeed.all
  end

  def create
    QualifiedNeed.create! qualified_need_data
    render nothing: true, status: 201
  end

  private

  def qualified_need_data
    params.permit :total_needed, :point_of_contact, :phone, :deadline, :street_address, :city, :state, :zip
  end
end
