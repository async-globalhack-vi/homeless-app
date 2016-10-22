class AssistanceProviderDashboardController < ApplicationController
  def index
    @events = Event.all
  end
end
