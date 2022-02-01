require 'rails_helper'

describe 'Usuário acessa o sistema e cadastra uma empresa' do
  it 'com sucesso' do
    # Arrange
    # Act
    visit root_path
    click_on 'Cadastrar empresa'
    fill_in 'Razão Social', with: 'Comunhão Cristã Abba'
    fill_in 'Nome Fantasia', with: 'ABBA'
    fill_in 'CNPJ', with: '00.395.488/0001-01'
    fill_in 'CEP', with: '80610-280'
    fill_in 'Endereço', with: 'Rua Engenheiro Niepce da Silva, 139'
    fill_in 'Bairro', with: 'Portão'
    fill_in 'Cidade', with: 'Curitiba'
    fill_in 'Estado', with: 'PR'
    fill_in 'Telefone', with: '41 3333-3363'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Empresa cadastrada com sucesso')
    expect(page).to have_css('h1', text: 'Comunhão Cristã Abba')
    expect(page).to have_content('CNPJ: 00.395.488/0001-01')
    expect(page).to have_content('Telefone: 41 3333-3363')
  end

  it 'mas não consegue devido a campos obrigatórios' do
    # Arrange
    # Act
    visit root_path
    click_on 'Cadastrar empresa'
    fill_in 'Razão Social', with: 'Comunhão Cristã Abba'
    fill_in 'Nome Fantasia', with: 'Abba'
    fill_in 'CEP', with: '80610-280'
    fill_in 'Endereço', with: 'Rua Engenheiro Niepce da Silva, 139'
    fill_in 'Bairro', with: 'Portão'
    fill_in 'Cidade', with: 'Curitiba'
    fill_in 'Estado', with: 'PR'
    fill_in 'Telefone', with: '41 3333-3363'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Empresa não pode ser cadastrada')
  end
end
