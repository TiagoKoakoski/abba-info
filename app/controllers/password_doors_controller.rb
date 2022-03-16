class PasswordDoorsController < ApplicationController
  def new
    @password_door = PasswordDoor.new
  end

  def create
    password_door = PasswordDoor.new(params.require(:password_door).permit(:top, :bottom))
    if password_door.save
      flash[:notice] = 'Senhas cadastradas com sucesso'
      redirect_to root_path
    else
      flash[:alert] = 'Senhas não foram cadastradas'
      render :new
    end
  end
    
end