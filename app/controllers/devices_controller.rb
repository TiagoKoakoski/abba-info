class DevicesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  def new
    @device = Device.new
  end

  def create
    @device = Device.new(params.require(:device).permit(:name, :brand, :model, :ip, :mac_address, :place, :note))
    if @device.save
      flash[:notice] = 'Dispositivo cadastrado com sucesso'
      redirect_to @device
    else
      flash[:alert] = 'Dispositivo não pode ser cadastrado'
      render :new
    end
  end

  def show
    @device = Device.find(params['id'])
  end

  def edit
    @device = Device.find(params['id'])
  end
  
  def update
    @device = Device.find(params['id'])
    if @device.update(params.require(:device).permit(:name, :brand, :model, :ip, :mac_address, :place, :note))
      flash[:notice] = 'Dispositivo atualizado com sucesso'
      redirect_to @device
    else
      flash[:alert] = 'Dispositivo não pode ser atualizado'
      render :edit
    end
  end
  
  def index
    @devices = Device.all
  end
end