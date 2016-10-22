class AssistanceProvidersController < ApplicationController
  skip_before_filter :authenticate

  def new
  end

  def create
    user = User.create! user_data
    @temp = AssistanceProvider.create! data.merge(user_id: user.id)
    session[:current_user_id] = user.id
    UserMailer.need_email(@temp).deliver_later
  end

  private

  def user_data
    params.permit :email, :password
  end

  def data
    params.permit :name, :email, :street_address, :city, :state, :zip, :max_monthly_contribution
  end
end
