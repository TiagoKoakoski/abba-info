class ComputersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  def new
    @computer = Computer.new
  end

  def create
    computer = Computer.new(params.require(:computer).permit(:code, :company_id, :departament_id, :person_id, :note,
                                                             :computer_type_id, :cpu, :memory_type, :memory, :mother_board, :storage_type, :storage, :operating_system_id, :operating_system_key, :office, :gpu, :mac_address, :ip))
    if computer.save
      flash[:notice] = 'Computador cadastrado com sucesso'
      redirect_to computer_path(computer.id)
    else
      flash[:alert] = 'Computador não pode ser cadastrado'
      render :new
    end
  end

  def show
    @computer = Computer.find(params[:id])
  end

  def edit
    @computer = Computer.find(params[:id])
  end

  def update
    computer = Computer.find(params[:id])
    if computer.update(params.require(:computer).permit(:code, :company_id, :departament_id, :person_id, :note,
                                                        :computer_type_id, :cpu, :memory_type, :memory, :mother_board, :storage_type, :storage, :operating_system_id, :operating_system_key, :office, :gpu, :mac_address, :ip))
      flash[:notice] = 'Computador atualizado com sucesso'
      redirect_to computer_path(computer.id)
    else
      flash[:alert] = 'Computador não pode ser atualizado'
      render :edit
    end
  end

  def index
    @computers = Computer.where('company_id like ? OR departament_id like ?', "%#{params[:q]}%", "%#{params[:q]}%")
  end
end
