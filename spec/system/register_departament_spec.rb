require 'rails_helper'

describe 'Cadastra departamento' do
  it 'com sucesso' do
    # Arrange
    company = Company.create!(name: 'Abba', fantasy_name: 'ABBA', registration_number: '00395488000101',
                                        postal_code: '80610280')
    # Act
    visit root_path
    click_on 'Cadastrar departamento'
    fill_in 'Nome', with: 'Informática'
    select 'ABBA', from: 'Empresa'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Informática')
    expect(page).to have_content('ABBA')
  end
  
  it 'mas o nome é obrigatório' do
    # Arrange
    company = Company.create!(name: 'Abba', fantasy_name: 'ABBA', registration_number: '00395488000101',
                                        postal_code: '80610280')
    # Act
    visit root_path
    click_on 'Cadastrar departamento'
    select 'ABBA', from: 'Empresa'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Departamento não pode ser cadastrado')
  end
end
