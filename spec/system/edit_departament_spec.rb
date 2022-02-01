require 'rails_helper'

describe 'Usuário edita departamento' do
  it 'com sucesso' do
    # Arrange
    company = Company.create!(name: 'Abba', fantasy_name: 'ABBA', registration_number: '00395488000101',
                              postal_code: '80610280')
    departament = Departament.create!(name: 'TI', company: company)
    # Act
    visit root_path
    click_on 'Lista de departamentos'
    click_on 'TI'
    click_on 'Editar'
    fill_in 'Nome', with: 'Informática'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Informática')
    expect(page).to have_content('ABBA')
    expect(page).to have_content('Departamento atualizado com sucesso')
  end

  it 'nome é obrigatório' do
    # Arrange
    company = create(:company)
    departament = Departament.create!(name: 'TI', company: company)
    # Act
    visit edit_departament_path(departament.id)
    fill_in 'Nome', with: ''
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Departamento não pode ser atualizado')
    expect(page).not_to have_content('Departamento atualizado com sucesso')
  end
end
