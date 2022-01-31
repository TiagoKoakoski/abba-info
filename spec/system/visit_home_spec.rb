require 'rails_helper'

describe 'Visitante acessa a pagina inicial' do
  it 'com sucesso' do
    # Arrange
    # Act
    visit root_path
    # Assert
    expect(page).to have_content('Bem vindo')
  end
end
