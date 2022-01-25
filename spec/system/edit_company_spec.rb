require 'rails_helper'

describe 'Usuário edita empresa' do
  it 'com sucesso' do
    # Arrange
    company = Company.create!(name: 'Abba', fantasy_name: 'ABBA', registration_number: '00395488000101',
                              postal_code: '80610280')
    # Act
    visit root_path
    click_on 'Lista de empresas'
    click_on 'ABBA'
    click_on 'Editar'
    fill_in 'Razão Social', with: 'Comunhão Cristã Abba'
    click_on 'Salvar'
    # Assert
    expect(page).to have_css('h1', text: 'Comunhão Cristã Abba')
    expect(page).to have_content('Empresa atualizada com sucesso')
  end

end
