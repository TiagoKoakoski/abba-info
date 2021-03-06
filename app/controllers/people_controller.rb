
class PeopleController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  def new
    @person = Person.new
  end

  def create
    person = Person.new(params.require(:person).permit(:name, :branch_line, :company_id, :departament_id))
    #response = Faraday.get("https://pokeapi.co/api/v2/pokemon/1")
    #parsed_response = JSON.parse(response.body)
    #person.codename = parsed_response['name']
    #person.image = parsed_response['sprites']['front_default']
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
    person = Person.find(params['id'])
    if person.update(params.require(:person).permit(:name, :branch_line, :company_id, :departament_id))
      flash[:notice] = 'Pessoa atualizada com sucesso'
      redirect_to person
    else
      flash[:alert] = 'Pessoa não pode ser atualizada'
      render :edit
    end
  end
end
