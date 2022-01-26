require 'rails_helper'

describe 'Usuário cadastra email' do
  it 'com sucesso' do
    # Arrange
    company = create(:company)
    departament = Departament.create!(name: 'Departamento', company: company)
    person = Person.create!(name: 'Nome Sobrenome', company: company, departament: departament, branch_line: '1010')
    # Act
    visit root_path
    click_on 'Cadastrar email'
    fill_in 'Conta', with: 'usuario@email.com'
    select 'Teste', from: 'Empresa'
    select 'Departamento', from: 'Departamento'
    select 'Nome Sobrenome', from: 'Nome do Usuário'
    fill_in 'Observação', with: 'Escrever uma história'
    click_on 'Salvar'
    # Assert
    expect(page).to have_content('usuario@email.com')
    expect(page).to have_content('Departamento')
    expect(page).to have_content('Nome Sobrenome')
  end
end
