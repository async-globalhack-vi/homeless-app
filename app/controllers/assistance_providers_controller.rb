class AssistanceProvidersController < ApplicationController
  def new
  end

  def create
    byebug
    AssistanceProvider.create! data
  end

  private

  def data
    params.permit :name, :email, :password, :street_address, :city, :state, :zip, :max_monthly_contribution
  end
end
