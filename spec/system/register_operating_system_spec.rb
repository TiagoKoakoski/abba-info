require 'rails_helper'

describe 'Usuário cadastra sistema operacional' do
  it 'com sucesso' do
    # Arrange
    user = create(:user)
    
    # Act
    login_as(user)
    visit root_path
    within('div#cadastros') do
      click_on 'S.O.'
    end
    fill_in 'Nome', with: 'Ubuntu 22.04'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Sistema operacional cadastrado com sucesso')
    expect(page).not_to have_content('Sistema operacional não pode ser cadastrado')
  end

  it 'mas o nome é obrigatório' do
    # Arrange
    user = create(:user)
    
    # Act
    login_as(user)
    visit root_path
    within('div#cadastros') do
      click_on 'S.O.'
    end
    click_on 'Salvar'
    # Assert
    expect(page).not_to have_content('Sistema operacional cadastrado com sucesso')
    expect(page).to have_content('Sistema operacional não pode ser cadastrado')
  end
end
