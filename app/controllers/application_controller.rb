class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :authenticate

  def current_user
    @_current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end

  def authenticate
    redirect_to new_login_path unless session[:current_user_id]
  end
end

