require 'rails_helper'

describe 'Usuário edita pessoa no sistema' do
  it 'com sucesso' do
    # Arrange
    person = create(:person)
    user = create(:user)
    
    # Act
    login_as(user)
    visit root_path
    within('div#listas') do
      click_on 'Pessoas'
    end
    click_on 'Nome Sobrenome'
    click_on 'Editar'
    fill_in 'Ramal', with: '2020'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Ramal: 2020')
    expect(page).to have_content('Pessoa atualizada com sucesso')
  end

  it 'nome é obrigatório' do
    # Arrange
    person = create(:person)
    user = create(:user)
    
    # Act
    login_as(user)
    visit edit_person_path(person.id)
    fill_in 'Nome', with: ''
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Pessoa não pode ser atualizada')
    expect(page).not_to have_content('Pessoa atualizada com sucesso')
  end
end
