class CareCoordinatorDashboardController < ApplicationController
  before_filter :ensure_user_is_care_coordinator

  def index
  end
end

