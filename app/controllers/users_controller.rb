class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    begin 
      @user.save!
      flash[:notice] = "New user created."
      redirect_to voip_devices_path
    rescue
      render :action => "new"
    end
  end


end
