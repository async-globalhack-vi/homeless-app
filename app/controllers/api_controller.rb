class ApiController < ActionController::API
  include ActionController::MimeResponds
  include AuthenticationChecks
end
