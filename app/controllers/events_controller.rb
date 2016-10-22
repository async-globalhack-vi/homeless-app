class EventsController < ApiController
  def index
    render json: Event.all
  end

  def create
    Event.create! event_data
    render nothing: true, status: 201
  end

  private

  def event_data
    params.permit :street_address, :city, :state, :zip, :notes, :event_type, :date_of_event
  end
end
