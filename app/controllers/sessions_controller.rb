class SessionsController < ApplicationController
  def new
  end

  def create
    username = params[:username]
    password = params[:password]

    user = User.find_by(username: username)

    if user
      if user.authenticate(password)
        session[:user_id] = user.id
        redirect_to pahlawans_path, notice: 'You are logged in'
      else
        redirect_to login_path, notice: 'Username/password is still wrong'
      end
    else
      redirect_to login_path, notice: 'Username/password is still wrong'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: 'You was logged out'
  end
end
