require 'rails_helper'

describe 'Usuário cadastra tipo de computador' do
  it 'com sucesso' do
    # Arrange
    user = create(:user)
    
    # Act
    login_as(user)
    visit root_path
    within('div#cadastros') do
      click_on 'Tipo de computador'
    end
    fill_in 'Tipo', with: 'Notebook'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Tipo cadastrado com sucesso')
  end
  it 'nome é obrigatório' do
    # Arrange
    user = create(:user)
    
    # Act
    login_as(user)
    visit root_path
    within('div#cadastros') do
      click_on 'Tipo de computador'
    end
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Tipo não pode ser cadastrado')
  end
end
