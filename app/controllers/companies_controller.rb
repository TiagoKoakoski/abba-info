class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    company = Company.new(params.require(:company).permit(:name,
                                                          :registration_number, :address, :district,
                                                          :city, :state, :fone_number, :fantasy_name))
    if company.save
      flash[:notice] = 'Empresa cadastrada com sucesso'
      redirect_to company_path(company.id)
    else
      flash[:alert] = 'Empresa não pode ser cadastrada'
      render :new
    end
  end

  def show
    @company = Company.find(params['id'])
  end

  def index
    @companies = Company.all
  end

  def edit
    @company = Company.find(params['id'])
  end

  def update
    company = Company.find(params['id'])
    if company.update(params.require(:company).permit(:name,
                                                      :registration_number, :address, :district,
                                                      :city, :state, :fone_number, :fantasy_name))
      flash[:notice] = 'Empresa atualizada com sucesso'
      redirect_to company_path(company.id)
    else
      flash[:alert] = 'Empresa não pode ser atualizada'
      render :edit
    end
  end
end
