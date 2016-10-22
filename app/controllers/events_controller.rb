class EventsController < ApiController
  before_filter :ensure_user_is_care_coordinator, only: [:index, :update, :show]

  def index
    if show_only_users_events
      render json: Event.where(user_id: current_user.id)
    else
      render json: Event.where(user_id: nil)
    end
  end

  def show
    render json: Event.find(event_id)
  end

  def update
    Event.find(event_id).update_attributes user_id: current_user.id
  end

  def create
    Event.create! event_data
    render nothing: true, status: 201
  end

  private

  def event_id
    params[:id]
  end

  def event_data
    params.permit :street_address, :city, :state, :zip, :notes, :event_type, :date_of_event
  end

  def show_only_users_events
    params.key? 'filter'
  end
end
