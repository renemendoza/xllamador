class VoipDevicesController < ApplicationController
  load_and_authorize_resource

  def index
    @voip_devices = VoipDevice.all
  end

  def new
    @voip_device = VoipDevice.new
  end

  def create
    @voip_device = VoipDevice.new(params[:voip_device])
    begin 
      @voip_device.save!
      flash[:notice] = "New voip device created."
      redirect_to voip_devices_path
    rescue
      render :action => "new"
    end
  end

  def edit
  end


end
