class AccountsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(resource_params)
    user.save
    redirect_to register_path
  end

  private

  def resource_params
    params.require(:user).permit(:fullname, :username, :password)
  end
end
