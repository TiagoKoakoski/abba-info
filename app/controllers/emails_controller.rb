class EmailsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  def new
    @email = Email.new
  end

  def create
    email = Email.new(params.require(:email).permit(:account, :password, :company_id, :departament_id, :person_id, :note))
    if email.save
      flash[:notice] = 'Conta criada com sucesso'
      redirect_to emails_path
    else
      flash[:alert] = 'Conta não pode ser criada'
      redirect_to emails_path
    end
  end

  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params['id'])
  end

  def edit
    @email = Email.find(params['id'])
  end

  def update
    email = Email.find(params['id'])
    if email.update(params.require(:email).permit(:account, :password, :company_id, :departament_id, :person_id, :note))
      flash[:notice] = 'Conta atualizada com sucesso'
      redirect_to emails_path
    else
      flash[:alert] = 'Conta não pode ser atualizada'
      redirect_to emails_path
    end
  end
end
