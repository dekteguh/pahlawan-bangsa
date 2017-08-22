class PahlawansController < ApplicationController
 
  before_action :user_logged_in?

  def index
    @pahlawans = Pahlawan.all
    @pahlawan = Pahlawan.new
  end

  def show
    id = params[:id]
    @pahlawan = Pahlawan.find(id)
  end
  
  def create
    pahlawan = Pahlawan.new(resource_params)
    pahlawan.save
    redirect_to pahlawans_path
  end

  def edit
    @pahlawan = Pahlawan.find(params[:id])
  end

  def update
    @pahlawan = Pahlawan.find(params[:id])
    @pahlawan.update(resource_params)
    redirect_to pahlawans_path
  end

  def destroy
    @pahlawan = Pahlawan.find(params[:id])
    @pahlawan.destroy
    redirect_to pahlawans_path
  end

  private

  def resource_params
    params.require(:pahlawan).permit(:name, :place, :birth, :description, :photo) 
  end
end
