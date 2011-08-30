class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate

  private
  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == Settings.user.email && password == Settings.user.password
    end
  end
end
