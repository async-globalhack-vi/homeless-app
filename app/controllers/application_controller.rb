class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :authenticate

  def current_user
    @_current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end

  def authenticate
    redirect_to new_login_path unless session[:current_user_id]
  end

  def ensure_user_is_assistance_provider
    redirect_to new_login_path unless current_user.assistance_provider?
  end

  def ensure_user_is_care_coordinator
    redirect_to new_login_path unless current_user.care_coordinator?
  end
end

