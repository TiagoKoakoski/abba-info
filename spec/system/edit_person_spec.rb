require 'rails_helper'

describe 'Usuário edita pessoa no sistema' do
  it 'com sucesso' do
    # Arrange
    person = create(:person)
    # Act
    visit root_path
    click_on 'Lista de pessoas'
    click_on 'Nome Sobrenome'
    click_on 'Editar'
    fill_in 'Ramal', with: '2020'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Ramal: 2020')
  end
end
