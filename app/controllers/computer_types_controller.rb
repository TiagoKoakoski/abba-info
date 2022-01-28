class ComputerTypesController < ApplicationController
  def new
    @computer_type = ComputerType.new
  end

  def create
    computer_type = ComputerType.new(params.require(:computer_type).permit(:name))
    if computer_type.save
      flash[:notice] = 'Tipo cadastrado com sucesso'
      redirect_to root_path
    else
      flash[:alert] = 'Tipo não pode ser cadastrado'
      render :new
    end
  end
end
