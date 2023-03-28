require 'rails_helper'

describe 'Usuário edita empresa' do
  it 'com sucesso' do
    # Arrange
    user = User.create!(email: 'admin@email.com', password: '12345678')
    company = Company.create!(name: 'Abba', fantasy_name: 'ABBA', registration_number: '00000000000101',
                              postal_code: '80610280')
    # Act
    visit root_path
    within("div#listas")
      click_on 'Empresas'
    click_on 'ABBA'
    click_on 'Editar'
    fill_in 'E-mail', with: 'admin@email.com'
    fill_in 'Senha', with: '12345678'
    click_on 'Log in'
    fill_in 'Razão Social', with: 'Comunhão Cristã Abba'
    fill_in 'Nome Fantasia', with: 'Abba LTDA'
    fill_in 'CNPJ', with: '2222222222'

    click_on 'Salvar'
    # Assert
    expect(page).to have_css('h1', text: 'Comunhão Cristã Abba')
    expect(page).to have_content('Empresa atualizada com sucesso')
  end

  it 'CNPJ é obrigatório' do
    # Arrange
    user = create(:user)
    company = create(:company)
    # Act
    login_as(user)
    visit edit_company_path(company.id)
    fill_in 'CNPJ', with: ''
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Empresa não pode ser atualizada')
    expect(page).not_to have_content('Empresa atualizada com sucesso')
  end
end
