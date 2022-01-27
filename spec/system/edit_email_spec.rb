require 'rails_helper'

describe 'Usuário edita email' do
  it 'com sucesso' do
    # Arrange
    email = create(:email)
    # Act
    visit root_path
    click_on 'Lista de e-mails'
    click_on 'email@email.com'
    click_on 'Editar'
    fill_in 'Conta', with: 'admin@admin.com'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Conta atualizada com sucesso')
    expect(page).to have_content('admin@admin.com')
    expect(page).not_to have_content('email@email.com')
  end
  
  it 'com sucesso' do
    # Arrange
    email = create(:email)
    # Act
    visit edit_email_path(email.id)
    fill_in 'Conta', with: ''
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Conta não pode ser atualizada')
    expect(page).not_to have_content('Conta atualizada com sucesso')
  end
end