class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #skip_before_filter :verify_authenticity_token, only: :write_cookies
  #before_filter :verify_custom_authenticity_token, :only => :write_cookies

  def  verify_authenticity_token
  end

  def verify_custom_authenticity_token
  end
end
