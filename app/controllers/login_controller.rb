class LoginController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_filter :authenticate

  def index
  end

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:current_user_id] = user.id
      redirect_to home_index_path
    else
      @error = 'Failed to login'
      render :index
    end
  end

  def destroy
    @_current_user = session[:current_user_id] = nil
    redirect_to home_index_path
  end
end
