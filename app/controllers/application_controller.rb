class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    else
      nil
    end
  end

  def user_logged_in?
    if current_user
      true
    else
      redirect_to login_path, notice: 'Please log in first'
      return false
    end
  end
end
