class CareCoordinatorDashboardController < ApplicationController
  def index
    @events = Event.all
  end
end

