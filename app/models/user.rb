class User < ActiveRecord::Base

  def assistance_provider?
    ! AssistanceProvider.where(user: self).empty?
  end

  def care_coordinator?
    ! CareCoordinator.where(user: self).empty?
  end
end
