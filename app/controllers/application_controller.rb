class ApplicationController < ActionController::Base
  before_action :authenticate!
  helper_method :current_user, :logged_in?, :current_user_path

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate!
    :authenticate_designer! || :authenticate_shop!
  end

  def current_user
    shop_signed_in? ? current_shop : current_designer
  end
  
  def current_user_path
    user = current_user
    user_path = designer_path(user) if user.is_a? Designer
    user_path = shop_path(user) if user.is_a? Shop
    user_path
  end

  def logged_in?
    if current_user
      true
    else
      false
    end
  end
end
