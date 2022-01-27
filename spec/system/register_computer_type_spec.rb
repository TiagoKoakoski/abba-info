require 'rails_helper'

describe 'Usuário cadastra tipo de computador' do
  it 'com sucesso' do
    # Arrange
    # Act
    visit root_path
    click_on 'Cadastrar tipo de computador'
    fill_in 'Tipo', with: 'Notebook'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Tipo cadastrado com sucesso')
  end
end