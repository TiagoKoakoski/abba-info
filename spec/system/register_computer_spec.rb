require 'rails_helper'

describe 'Usuário cadastra computador' do
  it 'com sucesso' do
    # Arrange
    create(:company, fantasy_name: 'Company')
    create(:person)
    create(:computer_type)
    create(:operating_system)
    # Act
    visit root_path
    click_on 'Cadastrar computador'
    within('div#formnew')
      select 'Company', from: 'Empresa'
      select 'Departamento', from: 'Departamento'
      select 'Nome Sobrenome', from: 'Usuário'
      select 'Notebook', from: 'Tipo do computador'
      fill_in 'CPU', with: 'i7'
      select 'DDR4', from: 'Tipo de memória'
      fill_in 'Tamanho da memória', with: '8'
      fill_in 'GPU', with: 'Nvidia Geforce 1050ti'
      fill_in 'Placa Mãe', with: 'Asus bla'
      select 'M2', from: 'Tipo de armazenamento'
      fill_in 'Tamanho do armazenamento', with: '480'
      fill_in 'Mac Address', with: 'aa:aa:aa:aa:aa'
      fill_in 'IP', with: '10.0.0.1'
      select 'Ubuntu 22.04', from: 'Sistema Operacional'
      select 'Office 2018', from: 'Office'
      click_on 'Salvar'
    # Assert
    expect(page).to have_content('Computador cadastrado com sucesso')
    expect(page).to have_content('Company-Departamento-')
  end
  it 'tipo é obrigatório' do
    # Arrange
    create(:company, fantasy_name: 'Company')
    create(:person)
    create(:operating_system)
    # Act
    visit root_path
    click_on 'Cadastrar computador'
    within('div#formnew')
      select 'Company', from: 'Empresa'
      select 'Departamento', from: 'Departamento'
      select 'Nome Sobrenome', from: 'Usuário'
      fill_in 'CPU', with: 'i7'
      select 'DDR4', from: 'Tipo de memória'
      fill_in 'Tamanho da memória', with: '8'
      fill_in 'GPU', with: 'Nvidia Geforce 1050ti'
      fill_in 'Placa Mãe', with: 'Asus bla'
      select 'M2', from: 'Tipo de armazenamento'
      fill_in 'Tamanho do armazenamento', with: '480'
      fill_in 'Mac Address', with: 'aa:aa:aa:aa:aa'
      fill_in 'IP', with: '10.0.0.1'
      select 'Ubuntu 22.04', from: 'Sistema Operacional'
      select 'Office 2018', from: 'Office'
      click_on 'Salvar'
    # Assert
    expect(page).to have_content('Computador não pode ser cadastrado')
    expect(page).not_to have_content('Computador cadastrado com sucesso')
    expect(page).not_to have_content('Company-Departamento-')
  end
end
