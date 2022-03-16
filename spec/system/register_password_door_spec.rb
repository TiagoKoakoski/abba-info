require 'rails_helper'

describe 'Registra senhas para portas' do
  it 'com sucesso' do
    door_password = PasswordDoor.create!(top: '4321', bottom: '1234')
    user = create(:user)

    login_as(user)
    visit root_path
    click_on 'Gerar nova senha'
    fill_in 'Top', with: '9012'
    fill_in 'Bottom', with: '8536'
    click_on 'Salvar'
    
    expect(page).to have_content('9012')
    expect(page).to have_content('8536')
  end
end
