require 'rails_helper'

describe 'Edita um dispositivo' do
  it 'Com sucesso' do
    user = create(:user)
    device = create(:device)

    login_as(user)
    visit edit_device_path(device.id)
       fill_in 'Nome', with: 'EBI'
    fill_in 'Marca', with: 'Ubiquiti'
    fill_in 'Modelo', with: 'Unifi AP-AC-Lite'
    fill_in 'IP', with: '192.168.1.89'
    fill_in 'Mac Address', with: 'fc:ec:da:34:2e:33'
    fill_in 'Local', with: 'Depto Informática'
    click_on 'Salvar'
    
    expect(page).to have_content('EBI')
    expect(page).to have_content('Ubiquiti | Unifi AP-AC-Lite')
  end
end
