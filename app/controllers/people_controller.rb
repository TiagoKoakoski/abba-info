class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    person = Person.new(params.require(:person).permit(:name, :branch_line, :company_id, :departament_id))
    if person.save
      flash[:notice] = 'Pessoa cadastrada com sucesso'
      redirect_to person
    else
      flash[:alert] = 'Pessoa não pode ser cadastrada'
      render :new
    end
  end

  def show
    @person = Person.find(params['id'])
  end

  def index
    @people = Person.all
  end

  def edit
    @person = Person.find(params['id'])
  end

  def update
    person = Person.new(params.require(:person).permit(:name, :branch_line, :company_id, :departament_id))
    if person.save
      flash[:notice] = 'Pessoa atualidada com sucesso'
      redirect_to person
    else
      flash[:alert] = 'Pessoa não pode ser atualizada'
      render :new
    end
  end

end
