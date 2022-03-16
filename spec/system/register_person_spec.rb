require 'rails_helper'

describe 'Usuário registra pessoa no sistema' do
  it 'com sucesso' do
    # Arrange
    # company = create(:company)
    departament = create(:departament)
    user = create(:user)
    
    # Act
    login_as(user)
    visit root_path
    within('div#cadastros') do
      click_on 'Pessoa'
    end
    fill_in 'Nome', with: 'Nome Sobrenome'
    select 'Teste', from: 'Empresa'
    select 'Departamento', from: 'Departamento'
    fill_in 'Ramal', with: '1010'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Nome Sobrenome')
    expect(page).to have_content('Ramal: 1010')
  end

  it 'mas nome é obrigatório' do
    # Arrange
    # company = create(:company)
    departament = create(:departament)
    user = create(:user)
    
    # Act
    login_as(user)
    visit root_path
    within('div#cadastros') do
      click_on 'Pessoa'
    end
    select 'Teste', from: 'Empresa'
    select 'Departamento', from: 'Departamento'
    fill_in 'Ramal', with: '1010'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Pessoa não pode ser cadastrada')
  end
end
