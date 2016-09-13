class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  def restrict_access
    required_access_token = ENV["ACCESS_TOKEN"]
    return true if required_access_token.nil? || required_access_token.empty?

    authenticate_or_request_with_http_token do |token, options|
      token == required_access_token
    end
  end
end
