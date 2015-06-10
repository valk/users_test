class ApplicationController < ActionController::Base
  before_action :authenticate_designer!
  helper_method :current_user, :logged_in?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    current_designer || current_shop
  end

  def logged_in?
    if current_user
      true
    else
      false
    end
  end
end
