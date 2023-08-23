class ApplicationController < ActionController::API
  # Use token middleware
  include ActionController::HttpAuthentication::Token::ControllerMethods
end
