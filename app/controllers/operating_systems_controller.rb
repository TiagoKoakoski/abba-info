class OperatingSystemsController < ApplicationController
  def new
    @operating_system = OperatingSystem.new
  end

  def create
    operating_system = OperatingSystem.new(params.require(:operating_system).permit(:name))
    if operating_system.save
      flash[:notice] = 'Sistema operacional cadastrado com sucesso'
      redirect_to new_operating_system_path
    else
      flash[:alert] = 'Sistema operacional não pode ser cadastrado'
      render :new
    end
  end
end