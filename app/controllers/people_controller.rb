
class PeopleController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  def new
    @person = Person.new
  end

  def create
    person = Person.new(params.require(:person).permit(:name, :branch_line, :company_id, :departament_id, :state))
    if person.save
      flash[:notice] = 'Pessoa cadastrada com sucesso'
      redirect_to person
    else
      flash[:alert] = 'Pessoa não pode ser cadastrada'
      redirect_to people_path
    end
  end

  def show
    @person = Person.find(params['id'])
    
  end

  def index
    @people = Person.where('name like ?', "%#{params[:q]}%").active
  end

  def edit
    @person = Person.find(params['id'])
  end

  def update
    person = Person.find(params['id'])
    if person.update(params.require(:person).permit(:name, :branch_line, :company_id, :departament_id, :state))
      flash[:notice] = 'Pessoa atualizada com sucesso'
      redirect_to person
    else
      flash[:alert] = 'Pessoa não pode ser atualizada'
      redirect_to person
    end
  end
end
