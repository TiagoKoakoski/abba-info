require 'rails_helper'


describe 'Usuário registra pessoa no sistema' do
  it 'com sucesso' do
    # Arrange
    # company = create(:company)
    departament = create(:departament)
    # Act
    visit root_path
    click_on 'Cadastrar pessoa'
    fill_in 'Nome', with: 'Nome Sobrenome'
    select 'Teste', from: 'Empresa'
    select 'Departamento', from: 'Departamento'
    fill_in 'Ramal', with: '1010'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Nome Sobrenome')
    expect(page).to have_content('Ramal: 1010')
  end
end
