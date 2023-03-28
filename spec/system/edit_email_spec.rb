require 'rails_helper'

describe 'Usuário edita email' do
  it 'com sucesso' do
    # Arrange
    email = create(:email)
    user = create(:user)
    
    # Act
    login_as(user)
    visit edit_email_path(email.id)
    fill_in 'Conta', with: ''
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Conta não pode ser atualizada')
    expect(page).not_to have_content('Conta atualizada com sucesso')
  end
end
