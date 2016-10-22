class AssistanceProvidersController < ApplicationController
  def new
  end

  def create
    user = User.create! user_data
    AssistanceProvider.create! data.merge(user_id: user.id)
  end

  private

  def user_data
    params.permit :email, :password
  end

  def data
    params.permit :name, :email, :street_address, :city, :state, :zip, :max_monthly_contribution
  end
end
