class HomeController < ApplicationController
  def index
    redirect_to assistance_provider_dashboard_path if current_user.assistance_provider?
    redirect_to care_coordinator_dashboard_path if current_user.care_coordinator?
  end
end
