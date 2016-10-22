class ApplicationController < ActionController::Base
  include AuthenticationChecks

  protect_from_forgery with: :exception
  before_filter :authenticate
  helper_method :current_user
end

