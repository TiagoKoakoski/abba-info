class DepartamentsController < ApplicationController
  def new
    @departament = Departament.new
  end

  def create
    departament = Departament.new(params.require(:departament).permit(:name, :company_id))
    if departament.save
      flash[:notice] = 'Departamento cadastrado com sucesso'
      redirect_to departaments_path
    else
      flash[:alert] = 'Departamento não pode ser cadastrado'
      render :new
    end
  end

  def index
    @departaments = Departament.all
  end

  def show
    @departament = Departament.find(params['id'])
  end

  def edit
    @departament = Departament.find(params['id'])
  end

  def update
    departament = Departament.new(params.require(:departament).permit(:name, :company_id))
    if departament.save
      flash[:notice] = 'Departamento atualizado com sucesso'
      redirect_to departaments_path
    else
      flash[:alert] = 'Departamento não pode ser atualizado'
      render :new
    end
  end

end
