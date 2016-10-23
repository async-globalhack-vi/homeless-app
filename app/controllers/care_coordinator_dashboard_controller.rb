class CareCoordinatorDashboardController < ApplicationController
  before_filter :ensure_user_is_care_coordinator

  def index
    @all_assistance_providers = AssistanceProvider.all
    @all_events = Event.all
    @all_qualified_needs = QualifiedNeed.all
  end
end

