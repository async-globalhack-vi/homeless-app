class User < ActiveRecord::Base
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    if user = find_by_email(email)
      user if user.password == password
    end
  end

  def assistance_provider?
    ! AssistanceProvider.where(user: self).empty?
  end

  def care_coordinator?
    ! CareCoordinator.where(user: self).empty?
  end
end
