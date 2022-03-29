require 'rails_helper'

describe 'Registra um dispositivo' do
  it 'Com sucesso' do
    user = create(:user)
    
    login_as(user)
    visit root_path
    within('div#cadastros') do
      click_on 'Dispositivos'
    end
    fill_in 'Nome', with: 'EBI'
    fill_in 'Marca', with: 'Ubiquiti'
    fill_in 'Modelo', with: 'Unifi AP-AC-Lite'
    fill_in 'IP', with: '192.168.1.89'
    fill_in 'MacAddress', with: 'fc:ec:da:34:2e:33'
    fill_in 'Local', with: 'Depto Informática'
    click_on 'Salvar'
    
    expect(page).to have_content('EBI')
    expect(page).to have_content('Ubiquiti | Unifi AP-AC-Lite')
  end
end
