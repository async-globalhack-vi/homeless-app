class LoginController < ApplicationController
  protect_from_forgery with: :exception

  def index
  end

  def create
    if user
      redirect_to assistance_provider_dashboard_path
    else
      redirect_to login_index_path
    end
  end

  private

  def user
    User.find_by(email: params[:email], password: params[:password])
  end
end
