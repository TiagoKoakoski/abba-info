require 'rails_helper'

describe 'Usuário cadastra email' do
  it 'com sucesso' do
    # Arrange
    company = create(:company)
    departament = Departament.create!(name: 'Departamento', company: company)
    person = Person.create!(name: 'Nome Sobrenome', company: company, departament: departament, branch_line: '1010')
    user = create(:user)
    
    # Act
    login_as(user)
    visit root_path
    within('div#cadastros') do
      click_on 'Email'
    end
    fill_in 'Conta', with: 'usuario@email.com'
    select 'Teste', from: 'Empresa'
    select 'Departamento', from: 'Departamento'
    select 'Nome Sobrenome', from: 'Nome do Usuário'
    fill_in 'Observação', with: 'Escrever uma história'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Departamento')
    expect(page).to have_content('Nome Sobrenome')
    expect(page).to have_content('Conta criada com sucesso')
  end

  it 'conta é obrigatória' do
    # Arrange
    company = create(:company)
    departament = Departament.create!(name: 'Departamento', company: company)
    person = Person.create!(name: 'Nome Sobrenome', company: company, departament: departament, branch_line: '1010')
    user = create(:user)
    
    # Act
    login_as(user)
    visit root_path
    within('div#cadastros') do
      click_on 'Email'
    end
    select 'Teste', from: 'Empresa'
    select 'Departamento', from: 'Departamento'
    select 'Nome Sobrenome', from: 'Nome do Usuário'
    fill_in 'Observação', with: 'Escrever uma história'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('Conta não pode ser criada')
    expect(page).not_to have_content('Conta cadastrado com sucesso')
  end
end
