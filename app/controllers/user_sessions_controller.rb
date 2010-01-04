class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])

    begin 
      @user_session.save!
      flash[:notice] = "Successfully logged in"
      redirect_to voip_devices_path
    rescue
      render :action => "new"
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy

    flash[:notice] = "Successfully logged out"
    redirect_to voip_devices_path
  end

end
