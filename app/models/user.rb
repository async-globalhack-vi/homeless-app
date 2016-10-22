class User < ActiveRecord::Base
  def self.authenticate(email, password)
    User.find_by(email: email, password: password)
  end

  def assistance_provider?
    ! AssistanceProvider.where(user: self).empty?
  end

  def care_coordinator?
    ! CareCoordinator.where(user: self).empty?
  end
end
