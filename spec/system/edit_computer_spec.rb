require 'rails_helper'

describe 'Usuário edita computador' do
  # it 'com sucesso' do
  #   # Arrange
  #   computer = create(:computer)
  #   user = create(:user)
    
  #   # Act
  #   login_as(user)
  #   visit edit_computer_path(computer.id)
    
  #   fill_in 'Tamanho da memória', with: 8
  #   click_on 'Salvar'
  #   # Assert
  #   expect(page).to have_content('Computador atualizado com sucesso')
  #   expect(page).not_to have_content('Computador não pode ser atualizado')
  # end

  # it 'mas o campo é obrigatório' do
  #   # Arrange
  #   computer = create(:computer)
  #   user = create(:user)
    
  #   # Act
  #   login_as(user)
  #   visit computer_path(computer.id)
  #   click_on 'Editar'
  #   fill_in 'CPU', with: ''
  #   click_on 'Salvar'
  #   # Assert
  #   expect(page).not_to have_content('Computador atualizado com sucesso')
  #   expect(page).to have_content('Computador não pode ser atualizado')
  # end
end
