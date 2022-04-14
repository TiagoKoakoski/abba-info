require 'rails_helper'

describe 'mostra especificação do departamento' do
    it 'com sucesso' do
        # arrange
        create(:departament)
        # act
        visit root_path
        within('div#listas') do
            click_on 'Departamentos'
        end
        click_on 'Departamento'
        # assert
        expect(page).to have_content('Departamento')
        expect(page).to have_content('Teste')
    end
    it 'e mostra os funcionários' do
        # arrange
        create(:person)
        # act
        visit root_path
        within('div#listas') do
            click_on 'Departamentos'
        end
        click_on 'Departamento'
        # assert
        expect(page).to have_content('Departamento')
        expect(page).to have_content('Nome Sobrenome')
    end

end
