class CareCoordinatorsController < ApplicationController
  def new
  end

  def create
    user = User.create! user_data
    CareCoordinator.create! data.merge(user_id: user.id)
  end

  private

  def user_data
    params.permit :email, :password
  end

  def data
    params.permit :name, :email
  end
end
