class LoginController < ApplicationController
  protect_from_forgery with: :exception

  def index
  end

  def create
    if user
      redirect_to assistance_provider_dashboard_path if user.assistance_provider?
      redirect_to care_coordinator_dashboard_path if user.care_coordinator?
    else
      redirect_to login_index_path
    end
  end

  private

  def user
    @user ||= User.find_by(email: params[:email], password: params[:password])
  end
end
